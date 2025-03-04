import ctypes
import array
import random
import math
import numpy as np

import pydra
from pydra import REQUIRED, Config
import os

from hip import hip, hiprtc

from utils.check import hip_check
from utils.io import read_file_as_bytes

REPO_TOP_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
KERNEL_DIR = os.path.join(REPO_TOP_DIR, "kernels")

class EvalConfig(Config):
    def __init__(self):
        self.kernel = REQUIRED # name of the matmul kernel to evaluate

        self.M = 1024
        self.K = 1024
        self.N = 1024
        self.alpha = 1.0
        self.beta = 0.0

    def __repr__(self):
        return f"EvalConfig({self.to_dict()})"

@pydra.main(base=EvalConfig)
def main(config: EvalConfig):
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

    # Define matrix dimensions
    M = config.M
    K = config.K
    N = config.N
    alpha = config.alpha
    beta = config.beta

    # Generate random input matrices
    A_h = np.random.rand(M, K).astype(np.float32)
    B_h = np.random.rand(K, N).astype(np.float32)
    C_h = np.zeros((M, N), dtype=np.float32)

    # Compute expected result using NumPy
    C_expected = np.dot(A_h, B_h)

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

    # **Profiling setup**
    num_iterations = 10
    kernel_times = []

    # Create HIP events for timing
    start_event = hip_check(hip.hipEventCreate())
    stop_event = hip_check(hip.hipEventCreate())

    block_size = 16
    block = hip.dim3(x=block_size, y=block_size)
    grid = hip.dim3(x=math.ceil(N / block_size), y=math.ceil(M / block_size))

    for _ in range(num_iterations):
        # Record start event
        hip_check(hip.hipEventRecord(start_event, 0))

        # Launch the kernel
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
                    ctypes.c_float(alpha),
                    ctypes.c_float(beta),
                ),
            )
        )

        # Record stop event
        hip_check(hip.hipEventRecord(stop_event, 0))
        hip_check(hip.hipEventSynchronize(stop_event))

        # Measure elapsed time
        elapsed_time = hip_check(hip.hipEventElapsedTime(start_event, stop_event))
        kernel_times.append(elapsed_time)

    # Compute average execution time
    avg_time = sum(kernel_times) / num_iterations
    print(f"\n✅ Average Kernel Execution Time: {avg_time:.4f} ms over {num_iterations} runs")

    # Copy result (stored in C_d) back to host
    hip_check(hip.hipMemcpy(C_h, C_d, num_bytes_C, hip.hipMemcpyKind.hipMemcpyDeviceToHost))

    # Compare with expected result
    if np.allclose(C_expected, C_h, atol=1e-3):
        print("✅ Matrix multiplication successful")
    else:
        print("❌ Matrix multiplication FAILED")

    # Clean up device memory
    hip_check(hip.hipFree(A_d))
    hip_check(hip.hipFree(B_d))
    hip_check(hip.hipFree(C_d))

    # Destroy events and module
    hip_check(hip.hipEventDestroy(start_event))
    hip_check(hip.hipEventDestroy(stop_event))
    hip_check(hip.hipModuleUnload(module))
    hip_check(hiprtc.hiprtcDestroyProgram(prog.createRef()))

if __name__ == "__main__":
    main()