from utils.check import hip_check, compare  
import pydra

from hip import hip, hipblas
import numpy as np
import triton
import triton.language as tl
import torch
import time

@triton.jit
def matmul_kernel_triton(
    # Pointers to matrices
    a_ptr, b_ptr, c_ptr,
    # Matrix dimensions
    M, N, K,
    # The stride variables represent how to access the next element in a row/column
    stride_am, stride_ak,
    stride_bk, stride_bn,
    stride_cm, stride_cn,
    # Scalar values for alpha and beta
    alpha, beta,
    # Meta-parameters
    BLOCK_SIZE_M: tl.constexpr, BLOCK_SIZE_N: tl.constexpr, BLOCK_SIZE_K: tl.constexpr,
):
    """
    Compute: C = alpha * A @ B + beta * C
    """
    # Program ID in the M and N dimensions
    pid_m = tl.program_id(axis=0)
    pid_n = tl.program_id(axis=1)

    # Offset to the start of the current block in A and B based on program ID
    a_offset = pid_m * BLOCK_SIZE_M * stride_am
    b_offset = pid_n * BLOCK_SIZE_N * stride_bn

    # Compute the starting offsets for each thread
    offs_m = tl.arange(0, BLOCK_SIZE_M)
    offs_n = tl.arange(0, BLOCK_SIZE_N)
    offs_k = tl.arange(0, BLOCK_SIZE_K)

    # Create offsets into A, B and C matrices
    a_ptrs = a_offset + offs_m[:, None] * stride_am + offs_k[None, :] * stride_ak
    b_ptrs = b_offset + offs_k[:, None] * stride_bk + offs_n[None, :] * stride_bn

    # Initialize accumulator to zeros
    c = tl.zeros((BLOCK_SIZE_M, BLOCK_SIZE_N), dtype=tl.float32)

    # Iterate to compute a block of the C matrix
    for k in range(0, tl.cdiv(K, BLOCK_SIZE_K)):
        # Adjust k-dimension pointers
        a_ptrs_k = a_ptrs + k * BLOCK_SIZE_K * stride_ak
        b_ptrs_k = b_ptrs + k * BLOCK_SIZE_K * stride_bk

        # Load A and B, mask out elements that are out of bounds
        k_remaining = K - k * BLOCK_SIZE_K
        a_mask = offs_k[None, :] < k_remaining
        b_mask = offs_k[:, None] < k_remaining
        a = tl.load(a_ptrs_k, mask=a_mask, other=0.0)
        b = tl.load(b_ptrs_k, mask=b_mask, other=0.0)

        # Compute block-wise matrix multiplication
        c += tl.dot(a, b)

    # Scale by alpha
    c = c * alpha

    # Load and update C with the beta * C term
    c_offset = pid_m * BLOCK_SIZE_M * stride_cm + pid_n * BLOCK_SIZE_N * stride_cn
    c_ptrs = c_offset + offs_m[:, None] * stride_cm + offs_n[None, :] * stride_cn
    
    # Apply bounds check for C
    m_mask = offs_m[:, None] < M
    n_mask = offs_n[None, :] < N
    mask = m_mask & n_mask
    
    if beta != 0.0:
        c_prev = tl.load(c_ptrs, mask=mask, other=0.0)
        c = c + beta * c_prev

    # Write back C block
    tl.store(c_ptrs, c, mask=mask)

def test_triton_matmul(config: pydra.Config, M: int, N: int, K: int, A_d, B_d, C_d, alpha: float, beta: float, C_expected):
    """
    Test the performance of the Triton matmul implementation
    """
    # Convert HIP device pointers to PyTorch tensors with shared memory
    # This involves creating PyTorch tensors that reference the memory
    # NOTE: In a real implementation, you might need to convert HIP pointers to CUDA pointers
    # or use a different approach based on your specific setup
    
    # Allocate PyTorch tensors using CUDA
    device = torch.device("cuda")
    
    # For demonstration, create new tensors and copy data over
    A_host = np.zeros((M, K), dtype=np.float32, order="F")
    B_host = np.zeros((K, N), dtype=np.float32, order="F")
    C_host = np.zeros((M, N), dtype=np.float32, order="F")
    
    # Copy from device to host
    hip_check(hip.hipMemcpy(A_host, A_d, A_host.nbytes, hip.hipMemcpyKind.hipMemcpyDeviceToHost))
    hip_check(hip.hipMemcpy(B_host, B_d, B_host.nbytes, hip.hipMemcpyKind.hipMemcpyDeviceToHost))
    hip_check(hip.hipMemcpy(C_host, C_d, C_host.nbytes, hip.hipMemcpyKind.hipMemcpyDeviceToHost))
    
    # Convert to PyTorch tensors
    A = torch.from_numpy(A_host).to(device)
    B = torch.from_numpy(B_host).to(device)
    C = torch.from_numpy(C_host).to(device)
    
    # Define grid and block sizes
    grid = (triton.cdiv(M, 32), triton.cdiv(N, 32))
    
    # Start timing
    start_time = time.time()
    
    # Launch the Triton kernel
    matmul_kernel_triton[grid](
        A, B, C,
        M, N, K,
        A.stride(0), A.stride(1),
        B.stride(0), B.stride(1),
        C.stride(0), C.stride(1),
        alpha, beta,
        BLOCK_SIZE_M=32, BLOCK_SIZE_N=32, BLOCK_SIZE_K=32
    )
    
    # Synchronize for accurate timing
    torch.cuda.synchronize()
    end_time = time.time()
    
    # Calculate elapsed time in milliseconds
    elapsed_time = (end_time - start_time) * 1000
    
    # Copy result back to host for comparison
    C_out = C.cpu().numpy()
    compare(C_out, C_expected)
    
    return elapsed_time

# Original HIP implementation
def test_hip_blas_matmul(config: pydra.Config, M: int, N: int, K: int, A_d, B_d, C_d, alpha: float, beta: float, C_expected):
    """
    Test the performance of the hipBLAS gemm implementation
    """

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

