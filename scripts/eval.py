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

# HIP-related imports
from hip import hip, hiprtc, hipblas

# Local/project imports
from utils.check import hip_check, compare
from utils.io import read_file_as_bytes
from src import run_hip_blas  # This import needs fixing

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



    def __repr__(self):
        return f"EvalConfig({self.to_dict()})"

def test_hip_kernel(config: EvalConfig, M: int, N: int, K: int, A_d, B_d, C_d, alpha: float, beta: float, C_expected):
    """
    Test the performance of the HiP kernel implementation
    Note this is not HIPBlas, but pure HiP kernel
    """

    # Define the HIP kernel (inline compilation)
    kernel_path = os.path.join(KERNEL_DIR, f"{config.kernel}.cpp")
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
    
    BN = 64
    BM = 64
    BK = 8

    block = hip.dim3(x=BM * BK)
    grid = hip.dim3(x=math.ceil(N / BN), y=math.ceil(M / BM))

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


def test_kernel(config: EvalConfig):
    """
    Driver code to test kernels
    """

    # Define matrix dimensions
    M = config.M
    K = config.K
    N = config.N

    # Scalars
    alpha = ctypes.c_float(config.alpha)
    beta = ctypes.c_float(config.beta)

    # Generate random input matrices

    # HIP BLAS expects matrices in column-major order
    if config.kernel == "":
        A_h = np.random.rand(M, K).astype(np.float32, order="F")
        B_h = np.random.rand(K, N).astype(np.float32, order="F")
        C_h = np.random.rand(M, N).astype(np.float32, order="F")
    else:
        A_h = np.random.rand(M, K).astype(np.float32)
        B_h = np.random.rand(K, N).astype(np.float32)
        C_h = np.random.rand(M, N).astype(np.float32)

    # Compute expected result using NumPy
    C_expected = alpha.value * np.dot(A_h, B_h) + beta.value * C_h

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

    # Convert string to KernelType if needed
    if not isinstance(config.kernel_type, KernelType):
        kernel_type = KernelType.from_string(str(config.kernel_type))
    else:
        kernel_type = config.kernel_type
    
    # setup kernel
    match kernel_type:
        case KernelType.HIP_BLAS:
            return run_hip_blas.test_hip_blas(config, M, N, K, A_d, B_d, C_d, alpha, beta, C_expected)
        case KernelType.HIP:
            return test_hip_kernel(config, M, N, K, A_d, B_d, C_d, alpha, beta, C_expected)
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
        test_kernel(config)

    num_iterations = config.num_iterations

    kernel_times = []
    for _ in range(config.num_iterations):
        kernel_times.append(test_kernel(config))
    
    # Compute average execution time
    # Compute average time
    total_time = sum(kernel_times) / 1000
    avg_time = total_time / num_iterations
    print(f"\n✅ Average Kernel Execution Time: {avg_time:.4f}s over {num_iterations} runs")
    print(f"\nPerformance: ({2. * 1e-9 * num_iterations * M * N * K / total_time}) GFLOPS. size: ({M} x {K}) * ({K} x {N}).\n")

if __name__ == "__main__":
    main()