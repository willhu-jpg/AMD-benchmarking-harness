from utils.check import compare  
from utils.types import DataType
import pydra
import os
import sys
import subprocess

import numpy as np
import torch

REPO_TOP_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
KERNEL_DIR = os.path.join(REPO_TOP_DIR, "kernels/TK/bf16fp32/")

def test_tk_matmul(config: pydra.Config, M: int, N: int, K: int, A_tensor: torch.Tensor, B_tensor: torch.Tensor, C_tensor: torch.Tensor, alpha: float, beta: float, C_expected: np.ndarray):
    """
    Test the performance of PyTorch matrix multiplication on AMD GPU with ROCm
    A_h, B_h, C_h are numpy arrays
    """

    assert len(config.kernel) > 0, "Kernel name must be provided"

    kernel_path = os.path.join(KERNEL_DIR, f"{config.kernel}/")
    assert os.path.exists(kernel_path), f"Kernel file does not exist: {kernel_path}"

    # Build the module
    result = subprocess.run(['make', 'clean'], cwd=kernel_path, capture_output=True, text=True)
    assert result.returncode == 0, "Failed to clean the kernel"
    result = subprocess.run(['make'], cwd=kernel_path, capture_output=True, text=True)
    assert result.returncode == 0, f"Failed to build the kernel: {result.stderr}"

    # Add to path and import
    if kernel_path not in sys.path:
        sys.path.insert(0, kernel_path)

    import tk_kernel

    # Create CUDA events for timing
    start_event = torch.cuda.Event(enable_timing=True)
    end_event = torch.cuda.Event(enable_timing=True)
    
    # Record start event
    start_event.record()

    # Perform matrix multiplication
    tk_kernel.dispatch_micro(A_tensor, B_tensor, C_tensor, alpha, beta)

    # Record end event and synchronize
    end_event.record()
    torch.cuda.synchronize()
    
    # Get elapsed time in milliseconds
    elapsed_time = start_event.elapsed_time(end_event)

    # Copy result back to CPU for validation
    C_tensor_cpu = C_tensor.cpu()
    compare(C_tensor_cpu, C_expected, config.debug, str(config.AB_type))

    return elapsed_time