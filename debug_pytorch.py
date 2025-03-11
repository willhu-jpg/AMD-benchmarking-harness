import torch

"""
Run this script to ensure PyTorch works on your AMD GPU 
This should not error
"""
# Specify the device
device = torch.device('cuda')  # This refers to the AMD GPU with ROCm

# Create a tensor directly on the GPU
tensor_on_gpu = torch.tensor([1.0, 2.0, 3.0], device=device)

# Alternatively, move an existing tensor to the GPU
tensor = torch.tensor([1.0, 2.0, 3.0])

tensor = tensor.to(device)
tensor = tensor*2


