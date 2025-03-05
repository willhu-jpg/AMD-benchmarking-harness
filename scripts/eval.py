import ctypes
import array
import random
import math
import numpy as np

import pydra
from pydra import REQUIRED, Config
import os

from hip import hip, hiprtc, hipblas

from utils.check import hip_check
from utils.io import read_file_as_bytes

REPO_TOP_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
KERNEL_DIR = os.path.join(REPO_TOP_DIR, "kernels")

class EvalConfig(Config):
    def __init__(self):
        self.kernel = "" # name of the matmul kernel to evaluate
        self.block_size = 16
        self.num_iterations = 10

        self.M = 1024
        self.K = 1024
        self.N = 1024
        self.alpha = 1.0
        self.beta = 0.0

    def __repr__(self):
        return f"EvalConfig({self.to_dict()})"

def compare(C_h, C_expected):
    # Compare with expected result
    if np.allclose(C_expected, C_h, atol=1e-3):
        print("✅ Matrix multiplication successful")
    else:
        print("❌ Matrix multiplication FAILED")
        print(f"Output: {C_h}")
        print(f"Golden: {C_expected}")

def test_hip_blas(config: EvalConfig, M: int, N: int, K: int, A_d, B_d, C_d, alpha: float, beta: float, C_expected):
    # Create hipBLAS handle
    handle = hip_check(hipblas.hipblasCreate())

    # Create HIP events for timing
    start_event = hip_check(hip.hipEventCreate())
    stop_event = hip_check(hip.hipEventCreate())

    # Record start event
    hip_check(hip.hipEventRecord(start_event, 0))

    hip_check(hipblas.hipblasSgemm(handle, 
        hipblas.hipblasOperation_t.HIPBLAS_OP_N,  # No transpose A
        hipblas.hipblasOperation_t.HIPBLAS_OP_N,  # No transpose B
        M, N, K,
        alpha, 
        A_d, M,
        B_d, K,
        beta, 
        C_d, M
    ))

    # Record stop event
    hip_check(hip.hipEventRecord(stop_event, 0))
    hip_check(hip.hipEventSynchronize(stop_event))

    # Measure elapsed time
    elapsed_time = hip_check(hip.hipEventElapsedTime(start_event, stop_event))

    # Copy result (stored in C_d) back to host
    C_out = np.zeros((M, N), dtype=np.float32, order="F")
    num_bytes_C = C_out.nbytes
    hip_check(hip.hipMemcpy(C_out, C_d, num_bytes_C, hip.hipMemcpyKind.hipMemcpyDeviceToHost))
    compare(C_out, C_expected)

    # Destroy events and module
    hip_check(hip.hipEventDestroy(start_event))
    hip_check(hip.hipEventDestroy(stop_event))

    return elapsed_time

def test_hip_kernel(config: EvalConfig, M: int, N: int, K: int, A_d, B_d, C_d, alpha: float, beta: float, C_expected):
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

    # setup
    if config.kernel == "":
        return test_hip_blas(config, M, N, K, A_d, B_d, C_d, alpha, beta, C_expected)
    else:
        return test_hip_kernel(config, M, N, K, A_d, B_d, C_d, alpha, beta, C_expected)

    # Clean up device memory
    hip_check(hip.hipFree(A_d))
    hip_check(hip.hipFree(B_d))
    hip_check(hip.hipFree(C_d))


@pydra.main(base=EvalConfig)
def main(config: EvalConfig):

    M = config.M
    N = config.N
    K = config.K

    # Warmup
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