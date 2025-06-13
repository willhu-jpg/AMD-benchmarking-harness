import torch
import tk_kernel


# Inputs
N = 8192
A = torch.randn(N, N, dtype=torch.bfloat16, device='cuda')
B = torch.randn(N, N, dtype=torch.bfloat16, device='cuda')
alpha = 1.0
beta = 0.0

# Reference matmul using PyTorch
C_ref = torch.matmul(A, B)

# Kernel matmul
C = torch.zeros(N, N, dtype=torch.float32, device='cuda')

num_warmup = 2
num_iters = 10
for _ in range(num_warmup):
    tk_kernel.dispatch_micro(A, B, C, alpha, beta)


# timings
start_event = torch.cuda.Event(enable_timing=True) # in milliseconds
end_event = torch.cuda.Event(enable_timing=True)
timings = []
for _ in range(num_iters):
    torch.cuda.synchronize()
    start_event.record()
    tk_kernel.dispatch_micro(A, B, C, alpha, beta)
    end_event.record()
    torch.cuda.synchronize()
    elapsed_time = start_event.elapsed_time(end_event)
    timings.append(elapsed_time)
avg_time = sum(timings) / len(timings)
flops = (2 * N**3) # FLOPs 
tflops = flops / (avg_time * 1e9)  # Convert to TFLOPS
print(f"Average execution time: {avg_time:.4f} ms")
print(f"Performance: {tflops:.2f} TFLOPS for {N}x{N} matrix multiplication.")


# Compare against reference
C_float = C.float()
C_ref_float = C_ref.float()
diff = (C_float - C_ref_float).abs()
max_error = diff.max().item()
mean_error = diff.mean().item()
error_count = (diff > 0.1).sum().item()

print(f"Max error: {max_error}")
print(f"Mean error: {mean_error}")
print(f"Number of large errors (>0.1): {error_count}")


