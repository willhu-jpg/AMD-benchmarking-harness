from utils.check import hip_check, compare  
import pydra

from hip import hip, hipblas
import numpy as np
import torch

def test_pytorch_matmul(config: pydra.Config, M: int, N: int, K: int, A_d, B_d, C_d, alpha: float, beta: float, C_expected):
    """
    Test the performance of PyTorch matrix multiplication on AMD GPU with ROCm
    """
    # For AMD GPUs with ROCm, we still use "cuda" as the device name in PyTorch
    # Check if ROCm-enabled PyTorch is available
    if not torch.cuda.is_available():
        raise RuntimeError("No GPU detected. Make sure PyTorch is built with ROCm support")
        
    device = torch.device("cuda")
    
    # Print device info for debugging
    print(f"Using PyTorch device: {device}")
    print(f"Device name: {torch.cuda.get_device_name(0)}")
    
    # Copy data from HIP memory to PyTorch tensors
    # First, we need to get the data back to host
    A_h = np.zeros((M, K), dtype=np.float32)
    B_h = np.zeros((K, N), dtype=np.float32)
    C_h = np.zeros((M, N), dtype=np.float32)
    
    hip_check(hip.hipMemcpy(A_h, A_d, A_h.nbytes, hip.hipMemcpyKind.hipMemcpyDeviceToHost))
    hip_check(hip.hipMemcpy(B_h, B_d, B_h.nbytes, hip.hipMemcpyKind.hipMemcpyDeviceToHost))
    hip_check(hip.hipMemcpy(C_h, C_d, C_h.nbytes, hip.hipMemcpyKind.hipMemcpyDeviceToHost))
    
    # Convert to PyTorch tensors and move to device
    A_torch = torch.from_numpy(A_h).to(device)
    B_torch = torch.from_numpy(B_h).to(device)
    C_torch = torch.from_numpy(C_h).to(device)
    
    # For ROCm, we can still use cuda events for timing
    # In PyTorch with ROCm, the CUDA API is mapped to the equivalent ROCm functionality
    start_event = torch.cuda.Event(enable_timing=True)
    end_event = torch.cuda.Event(enable_timing=True)
    
    # Warmup (important for GPU benchmarking)
    for _ in range(3):
        _ = alpha * torch.matmul(A_torch, B_torch) + beta * C_torch
        torch.cuda.synchronize()  # Make sure each warmup run completes
    
    # Synchronize before timing
    torch.cuda.synchronize()
    
    # Record start event
    start_event.record()
    
    # Perform matrix multiplication
    C_result = alpha * torch.matmul(A_torch, B_torch) + beta * C_torch
    
    # Record end event
    end_event.record()
    
    # Synchronize after timing
    torch.cuda.synchronize()
    
    # Calculate elapsed time in milliseconds
    elapsed_time = start_event.elapsed_time(end_event)
    
    # Copy result back to CPU for validation
    C_result_cpu = C_result.cpu().numpy()
    
    # Validate result
    compare(C_result_cpu, C_expected)
    
    # Copy result back to HIP memory
    hip_check(hip.hipMemcpy(C_d, C_result_cpu, C_result_cpu.nbytes, hip.hipMemcpyKind.hipMemcpyHostToDevice))
    
    return elapsed_time


# def test_hip_blas_matmul(config: pydra.Config, M: int, N: int, K: int, A_d, B_d, C_d, alpha: float, beta: float, C_expected):
#     """
#     Test the performance of the hipBLAS gemm implementation
#     """

#     # Create hipBLAS handle
#     handle = hip_check(hipblas.hipblasCreate())

#     # Create HIP events for timing
#     start_event = hip_check(hip.hipEventCreate())
#     stop_event = hip_check(hip.hipEventCreate())

#     # Record start event
#     hip_check(hip.hipEventRecord(start_event, 0))

#     hip_check(hipblas.hipblasSgemm(handle, 
#         hipblas.hipblasOperation_t.HIPBLAS_OP_N,  # No transpose A
#         hipblas.hipblasOperation_t.HIPBLAS_OP_N,  # No transpose B
#         M, N, K,
#         alpha, 
#         A_d, M,
#         B_d, K,
#         beta, 
#         C_d, M
#     ))

#     # Record stop event
#     hip_check(hip.hipEventRecord(stop_event, 0))
#     hip_check(hip.hipEventSynchronize(stop_event))

#     # Measure elapsed time
#     elapsed_time = hip_check(hip.hipEventElapsedTime(start_event, stop_event))

#     # Copy result (stored in C_d) back to host
#     C_out = np.zeros((M, N), dtype=np.float32, order="F")
#     num_bytes_C = C_out.nbytes
#     hip_check(hip.hipMemcpy(C_out, C_d, num_bytes_C, hip.hipMemcpyKind.hipMemcpyDeviceToHost))
#     compare(C_out, C_expected)

#     # Destroy events and module
#     hip_check(hip.hipEventDestroy(start_event))
#     hip_check(hip.hipEventDestroy(stop_event))

#     return elapsed_time

