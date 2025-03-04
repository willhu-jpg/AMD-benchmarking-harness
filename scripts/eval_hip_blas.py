import ctypes
import numpy as np
from hip import hip
from hip import hipblas

from utils.check import hip_check

import pydra
from pydra import REQUIRED, Config

import triton.testing

class EvalConfig(Config):
    def __init__(self):

        self.M = 1024
        self.K = 1024
        self.N = 1024

        self.alpha = 1.0
        self.beta = 0.0

    def __repr__(self):
        return f"EvalConfig({self.to_dict()})"

@pydra.main(base=EvalConfig)
def main(config: EvalConfig):

    # Define matrix dimensions (M x K) * (K x N) = (M x N)
    M = config.M
    K = config.K
    N = config.N

    # Scalars
    alpha = ctypes.c_float(config.alpha)
    beta = ctypes.c_float(config.beta)

    # Generate input matrices A and B on the host
    A_h = np.random.rand(M, K).astype(np.float32, order="F")
    B_h = np.random.rand(K, N).astype(np.float32, order="F")
    C_h = np.random.rand(M, N).astype(np.float32, order="F")  # Output matrix initialized to zero

    # Compute expected result using NumPy
    C_expected = alpha.value * np.dot(A_h, B_h) + beta.value * C_h

    # Allocate device memory
    num_bytes_A = A_h.nbytes
    num_bytes_B = B_h.nbytes
    num_bytes_C = C_h.nbytes

    A_d = hip_check(hip.hipMalloc(num_bytes_A))
    B_d = hip_check(hip.hipMalloc(num_bytes_B))
    C_d = hip_check(hip.hipMalloc(num_bytes_C))

    # Copy input data to the device
    hip_check(hip.hipMemcpy(A_d, A_h, num_bytes_A, hip.hipMemcpyKind.hipMemcpyHostToDevice))
    hip_check(hip.hipMemcpy(B_d, B_h, num_bytes_B, hip.hipMemcpyKind.hipMemcpyHostToDevice))

    # Create hipBLAS handle
    handle = hip_check(hipblas.hipblasCreate())

    # **Profiling setup**
    num_iterations = 10
    kernel_times = []

    # Create HIP events for timing
    start_event = hip_check(hip.hipEventCreate())
    stop_event = hip_check(hip.hipEventCreate())

    # Do a warmup run and check for correctness
    hip_check(hip.hipMemcpy(C_d, C_h, num_bytes_C, hip.hipMemcpyKind.hipMemcpyHostToDevice))
    # Perform matrix multiplication: C = alpha * (A * B) + beta * C
    hip_check(hipblas.hipblasSgemm(handle, 
                        hipblas.hipblasOperation_t.HIPBLAS_OP_N,  # No transpose for A
                        hipblas.hipblasOperation_t.HIPBLAS_OP_N,  # No transpose for B
                        M, N, K, 
                        ctypes.addressof(alpha), 
                        A_d, M, 
                        B_d, K, 
                        ctypes.addressof(beta), 
                        C_d, M))

    # Copy result (stored in C_d) back to host
    hip_check(hip.hipMemcpy(C_h, C_d, num_bytes_C, hip.hipMemcpyKind.hipMemcpyDeviceToHost))

    # Compare with expected result
    if np.allclose(C_expected, C_h, atol=1e-3):
        print("✅ Matrix multiplication successful")
    else:
        print("❌ Matrix multiplication FAILED")
        print(f"Output: {C_h}")
        print(f"Golden: {C_expected}")

    for _ in range(num_iterations):
        hip_check(hip.hipMemcpy(C_h, C_d, num_bytes_C, hip.hipMemcpyKind.hipMemcpyDeviceToHost))

        # Record start event
        hip_check(hip.hipEventRecord(start_event, 0))

        # Perform matrix multiplication: C = alpha * (A * B) + beta * C
        hip_check(hipblas.hipblasSgemm(handle, 
                            hipblas.hipblasOperation_t.HIPBLAS_OP_N,  # No transpose for A
                            hipblas.hipblasOperation_t.HIPBLAS_OP_N,  # No transpose for B
                            M, N, K, 
                            ctypes.addressof(alpha), 
                            A_d, M, 
                            B_d, K, 
                            ctypes.addressof(beta), 
                            C_d, M))

        # Record stop event
        hip_check(hip.hipEventRecord(stop_event, 0))
        hip_check(hip.hipEventSynchronize(stop_event))

        # Measure elapsed time
        elapsed_time = hip_check(hip.hipEventElapsedTime(start_event, stop_event))
        kernel_times.append(elapsed_time)

    # Compute average time
    total_time = sum(kernel_times) / 1000
    avg_time = total_time / num_iterations
    print(f"\n✅ Average Kernel Execution Time: {avg_time:.4f}s over {num_iterations} runs")
    print(f"\nPerformance: ({2. * 1e-9 * num_iterations * M * N * K / total_time}) GFLOPS. size: ({M} x {K}) * ({K} x {N}).\n")

    # Destroy hipBLAS handle
    hip_check(hipblas.hipblasDestroy(handle))

    # Clean up device memory
    hip_check(hip.hipFree(A_d))
    hip_check(hip.hipFree(B_d))
    hip_check(hip.hipFree(C_d))

    # Destroy events
    hip_check(hip.hipEventDestroy(start_event))
    hip_check(hip.hipEventDestroy(stop_event))

if __name__ == "__main__":
    main()