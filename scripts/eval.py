# Standard library imports
import os
import math
import random
import array
import ctypes
from enum import Enum, auto

# Third-party imports
import numpy as np
import pydra
from pydra import REQUIRED, Config


# Write results to JSON file
import json
import datetime

# HIP-related imports
from hip import hip, hiprtc, hipblas

# Local/project imports
from utils.check import hip_check, compare
from utils.io import read_file_as_bytes
from src import run_hip_blas, run_pytorch, run_triton 

"""
Evaluate the performance of HiP implementations of various kernels
"""

REPO_TOP_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
KERNEL_DIR = os.path.join(REPO_TOP_DIR, "kernels")

class KernelType(Enum):
    """Enum for different kernel implementations"""
    PYTORCH = auto()
    HIP = auto()
    HIP_BLAS = auto()
    TRITON = auto()
    THUNDERKITTEN = auto()
    
    def __str__(self):
        return self.name.lower()
    
    @classmethod
    def from_string(cls, name: str):
        """Convert string to enum value, case-insensitive"""
        try:
            return cls[name.upper()]
        except KeyError:
            valid_values = [k.name.lower() for k in cls]
            raise ValueError(f"Invalid kernel type: {name}. Valid values are: {', '.join(valid_values)}")


class EvalConfig(Config):
    def __init__(self):
        self.kernel = "" # name of the matmul kernel to evaluate
        self.block_size = 16

        # matrix size dimensions
        # A matrix is M x K 
        # B matrix is K x N
        # C matrix is M x N
        self.M = 1024
        self.K = 1024
        self.N = 1024
        self.alpha = 1.0
        self.beta = 0.0

        # which kernel backend to run
        self.kernel_type = KernelType.HIP

        # timing
        self.num_warmup = 3
        self.num_iterations = 10


        self.results_dir = os.path.join(REPO_TOP_DIR, "results")

    def matmul_shape(self):
        # Standard GEMM shape for benchmarking

        self.M = 8192
        self.K = 8192
        self.N = 8192   

    # Below are shapes of operations used in Llama 70B model
    def qkv_proj_shape(self):
        # Fused QKV Projection GEMM shape

        self.M = 16384
        self.K = 8192
        self.N = 1280

    def attn_output_shape(self):
        # Attention Output Projection shape
        self.M = 16384
        self.K = 1024
        self.N = 8192

    def ffn_gemm_shape(self):
        # FFN GEMM shape
        self.M = 16384
        self.K = 3584
        self.N = 8192


    def __repr__(self):
        return f"EvalConfig({self.to_dict()})"

def test_hip_kernel(config: EvalConfig, M: int, N: int, K: int, A_d, B_d, C_d, alpha: float, beta: float, C_expected):
    """
    Test the performance of the HiP kernel implementation
    Note this is not HIPBlas, but pure HiP kernel
    """
    assert len(config.kernel) > 0, "Kernel name must be provided"

    # Define the HIP kernel (inline compilation)
    kernel_path = os.path.join(KERNEL_DIR, f"{config.kernel}.cpp")
    assert os.path.exists(kernel_path), f"Kernel file does not exist: {kernel_path}"
    source = read_file_as_bytes(kernel_path)

    # Compile kernel using HIPRTC
    prog = hip_check(hiprtc.hiprtcCreateProgram(source, b"matmul_kernel", 0, [], []))

    props = hip.hipDeviceProp_t()
    hip_check(hip.hipGetDeviceProperties(props, 0))
    arch = props.gcnArchName

    print(f"Compiling kernel for {arch}")

    cflags = [b"--offload-arch=" + arch]
    err, = hiprtc.hiprtcCompileProgram(prog, len(cflags), cflags)
    if err != hiprtc.hiprtcResult.HIPRTC_SUCCESS:
        log_size = hip_check(hiprtc.hiprtcGetProgramLogSize(prog))
        log = bytearray(log_size)
        hip_check(hiprtc.hiprtcGetProgramLog(prog, log))
        raise RuntimeError(log.decode())

    # Extract compiled binary
    code_size = hip_check(hiprtc.hiprtcGetCodeSize(prog))
    code = bytearray(code_size)
    hip_check(hiprtc.hiprtcGetCode(prog, code))
    module = hip_check(hip.hipModuleLoadData(code))
    kernel = hip_check(hip.hipModuleGetFunction(module, b"matmul_kernel"))

    # Compute block and grid
    block_size = config.block_size
    
    if (config.kernel == "1d_blocked_matmul"):
        BN = 64
        BM = 64
        BK = 8

        block = hip.dim3(x=BM * BK)
        grid = hip.dim3(x=math.ceil(N / BN), y=math.ceil(M / BM))
    elif (config.kernel == "blocked_matmul"):
        BN = 32
        BM = 32
        BK = 32

        block = hip.dim3(x=BM, y=BK)
        grid = hip.dim3(x=math.ceil(N / BN), y=math.ceil(M / BM))
    else:
        block = hip.dim3(x=block_size, y=block_size)
        grid = hip.dim3(x=math.ceil(N / block_size), y=math.ceil(M / block_size))

    # Create HIP events for timing
    start_event = hip_check(hip.hipEventCreate())
    stop_event = hip_check(hip.hipEventCreate())

    # Record start event
    hip_check(hip.hipEventRecord(start_event, 0))

    hip_check(
        hip.hipModuleLaunchKernel(
            kernel,
            *grid,
            *block,
            sharedMemBytes=0,
            stream=None,
            kernelParams=None,
            extra=(
                ctypes.c_int(M),
                ctypes.c_int(N),
                ctypes.c_int(K),
                A_d,
                B_d,
                C_d,
                alpha,
                beta,
            ),
        )
    )

    # Record stop event
    hip_check(hip.hipEventRecord(stop_event, 0))
    hip_check(hip.hipEventSynchronize(stop_event))

    # Measure elapsed time
    elapsed_time = hip_check(hip.hipEventElapsedTime(start_event, stop_event))

    # Copy result (stored in C_d) back to host
    C_out = np.zeros((M, N), dtype=np.float32)
    num_bytes_C = C_out.nbytes
    hip_check(hip.hipMemcpy(C_out, C_d, num_bytes_C, hip.hipMemcpyKind.hipMemcpyDeviceToHost))
    compare(C_out, C_expected)

    # Destroy events and module
    hip_check(hip.hipEventDestroy(start_event))
    hip_check(hip.hipEventDestroy(stop_event))
    hip_check(hip.hipModuleUnload(module))
    hip_check(hiprtc.hiprtcDestroyProgram(prog.createRef()))

    return elapsed_time


def test_kernel_harness(config: EvalConfig):
    """
    Driver code to test kernels
    """

    # Convert string to KernelType if needed
    if not isinstance(config.kernel_type, KernelType):
        kernel_type = KernelType.from_string(str(config.kernel_type))
    else:
        kernel_type = config.kernel_type
   

    # Define matrix dimensions
    M = config.M
    K = config.K
    N = config.N

    alpha = config.alpha
    beta = config.beta

 
    # HIP BLAS expects matrices in column-major order
    order = "F" if kernel_type == KernelType.HIP_BLAS else "C"
    A_h = np.random.rand(M, K).astype(np.float32, order=order)
    B_h = np.random.rand(K, N).astype(np.float32, order=order)
    C_h = np.random.rand(M, N).astype(np.float32, order=order)

    # Compute expected result using NumPy as Golden Reference
    C_expected = alpha * np.dot(A_h, B_h) + beta * C_h

    if kernel_type in [KernelType.HIP_BLAS, KernelType.HIP]:

        # Scalars
        alpha = ctypes.c_float(config.alpha)
        beta = ctypes.c_float(config.beta)

        # Allocate device memory
        num_bytes_A = A_h.nbytes
        num_bytes_B = B_h.nbytes
        num_bytes_C = C_h.nbytes

        A_d = hip_check(hip.hipMalloc(num_bytes_A))
        B_d = hip_check(hip.hipMalloc(num_bytes_B))
        C_d = hip_check(hip.hipMalloc(num_bytes_C))

        # Copy input data to device
        hip_check(hip.hipMemcpy(A_d, A_h, num_bytes_A, hip.hipMemcpyKind.hipMemcpyHostToDevice))
        hip_check(hip.hipMemcpy(B_d, B_h, num_bytes_B, hip.hipMemcpyKind.hipMemcpyHostToDevice))
        hip_check(hip.hipMemcpy(C_d, C_h, num_bytes_C, hip.hipMemcpyKind.hipMemcpyHostToDevice))

    # setup kernel
    match kernel_type:
        case KernelType.HIP_BLAS: # HIP_BLAS
            
            return run_hip_blas.test_hip_blas_matmul(config, M, N, K, A_d, B_d, C_d, alpha, beta, C_expected)
        
        case KernelType.HIP: # hand-written kernel

            assert len(config.kernel) > 0, "Kernel name must be provided"
            return test_hip_kernel(config, M, N, K, A_d, B_d, C_d, alpha, beta, C_expected)
        
        case KernelType.TRITON: # Triton
            return run_triton.test_triton_matmul(config, M, N, K, A_h, B_h, C_h, alpha, beta, C_expected)

        case KernelType.THUNDERKITTEN: # Thunderkitten
            raise NotImplementedError("Thunderkitten is not implemented yet")

        case KernelType.PYTORCH: # PyTorch
            # pass the numpy arrays to pytorch
            return run_pytorch.test_pytorch_matmul(config, M, N, K, A_h, B_h, C_h, alpha, beta, C_expected)
        
        case _:
            raise ValueError(f"Not implemented for kernel type: {config.kernel_type}")
    
    # Clean up device memory
    hip_check(hip.hipFree(A_d))
    hip_check(hip.hipFree(B_d))
    hip_check(hip.hipFree(C_d))


@pydra.main(base=EvalConfig)
def main(config: EvalConfig):

    print(f"Running {config.kernel_type} kernel")

    M = config.M
    N = config.N
    K = config.K
    alpha = config.alpha
    beta = config.beta

    print(f"Testing Kernel with size: M {M} x K {K} x N {N} Alpha: {alpha}, Beta: {beta}")
    print(f"Using Kernel Backend: {config.kernel_type} Kernel Name: {config.kernel}")

    # Warmup
    for _ in range(config.num_warmup):
        test_kernel_harness(config)

    num_iterations = config.num_iterations

    kernel_times = []
    for _ in range(config.num_iterations):
        kernel_times.append(test_kernel_harness(config))
    

    # Compute execution test stats
    times_array = np.array(kernel_times)

    stats = {
        "mean": float(f"{np.mean(times_array):.2f}"),
        "std": float(f"{np.std(times_array):.2f}"), 
        "min": float(f"{np.min(times_array):.2f}"),
        "max": float(f"{np.max(times_array):.2f}"),
        "median": float(f"{np.median(times_array):.2f}"),
        "total_time": float(f"{np.sum(times_array):.2f}")
    }
    
    
    # total_time = sum(kernel_times)
    # avg_time = total_time / num_iterations
    print(f"\n✅ Average Kernel Execution Time: {stats['mean']:.4f} ms over {num_iterations} runs")
    print(f"Stats: {stats}")
    flops = 2. * 1e-9 * num_iterations * M * N * K / stats['total_time']
    print(f"\nPerformance FLOPS: ({flops:.2f}) TFLOPS. size: ({M} x {K}) * ({K} x {N}).\n")
    

    results = {
        "kernel_type": str(config.kernel_type),
        "kernel_name": config.kernel,
        "matrix_dims": {
            "M": M,
            "N": N, 
            "K": K,
            "alpha": alpha,
            "beta": beta
        },
        "parameters": {
            "num_warmup": config.num_warmup,
            "num_iterations": num_iterations
        },
        "timing_stats": stats,
        "performance": {
            "tflops": float(f"{flops:.2f}")
        },
        "timestamp": datetime.datetime.now().isoformat(),
        "precision": "fp32"
    }

    # Generate filename with timestamp
    timestamp = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    filename = f"results_{config.kernel_type}_config_{config.kernel}_{M}x{K}x{N}_{timestamp}.json"
    filepath = os.path.join(config.results_dir, filename)

    # Write results to JSON file
    with open(filepath, "w") as f:
        json.dump(results, f, indent=4)

    print(f"\nResults written to: {filepath}")

if __name__ == "__main__":
    main()