# AMD-benchmarking-harness


## Setup

Install PyTorch. Need to install special PyTorch that targets AMD. From the [PyTorch website](https://pytorch.org/get-started/locally/)
```
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm6.3
```

Get the ThunderKittens-HIP repo
```
git submodule update --init --recursive
```

Install Hip-Python. Make sure that the version matches that of your ROCm HIP SDK version. Something like this:

```
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
pip install --index-url https://test.pypi.org/simple "hip-python==6.3.0.540.30"
pip install -e .
```

Load rocm on your gpu: 
```bash
module avail
module load rocm/6.3.3
```
If there are version mismatches, the kernel results will be incorrect. 


### Directory structure
```
kernels/
    - HiP implementations of various kernels
utils/
    - helper functions for benchmarking
```

### Kernels to benchmark
So far we care about
* Element-wise add
* Element-wise multiply
* Matrix Multiply

```bash 
cd AMD-benchmarking-harness/kernels/TK/bf16fp32/transpose_matmul
make 
python test_python.py
```


