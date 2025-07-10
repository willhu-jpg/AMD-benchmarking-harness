```
root@gpu-10:/workdir/AMD-benchmarking-harness/kernels/TK/bf16fp32/mi325x/256_256_64_16# make
/opt/rocm/bin/hipcc 256_256_64_16.cpp -DKITTENS_CDNA3 --offload-arch=gfx942 -std=c++20 -w --save-temps -I/workdir/AMD-benchmarking-harness/ThunderKittens-HIP/include -I/workdir/AMD-benchmarking-harness/ThunderKittens-HIP/prototype -I/opt/conda/envs/py_3.12/include/python3.12 -I/opt/conda/envs/py_3.12/lib/python3.12/site-packages/pybind11/include -L/opt/conda/envs/py_3.12/lib/python3.12/config-3.12-x86_64-linux-gnu -L/opt/conda/envs/py_3.12/lib  -lpthread -ldl  -lutil -lm  -shared -fPIC -Rpass-analysis=kernel-resource-usage -I/workdir/AMD-benchmarking-harness/ThunderKittens-HIP/include -I/opt/rocm/include/hip  \
    -o tk_kernel.cpython-312-x86_64-linux-gnu.so 2>&1 | tee /shared/amdgpu/home/tech_ops_amd_xqh/simran/data_logs/0710_2149_outputs/make_build.log
remark: 256_256_64_16.cpp:38:0: Function Name: _Z8micro_tk13micro_globals [-Rpass-analysis=kernel-resource-usage]
remark: 256_256_64_16.cpp:38:0:     SGPRs: 32 [-Rpass-analysis=kernel-resource-usage]
remark: 256_256_64_16.cpp:38:0:     VGPRs: 250 [-Rpass-analysis=kernel-resource-usage]
remark: 256_256_64_16.cpp:38:0:     AGPRs: 0 [-Rpass-analysis=kernel-resource-usage]
remark: 256_256_64_16.cpp:38:0:     ScratchSize [bytes/lane]: 0 [-Rpass-analysis=kernel-resource-usage]
remark: 256_256_64_16.cpp:38:0:     Dynamic Stack: False [-Rpass-analysis=kernel-resource-usage]
remark: 256_256_64_16.cpp:38:0:     Occupancy [waves/SIMD]: 2 [-Rpass-analysis=kernel-resource-usage]
remark: 256_256_64_16.cpp:38:0:     SGPRs Spill: 0 [-Rpass-analysis=kernel-resource-usage]
remark: 256_256_64_16.cpp:38:0:     VGPRs Spill: 0 [-Rpass-analysis=kernel-resource-usage]
remark: 256_256_64_16.cpp:38:0:     LDS Size [bytes/block]: 0 [-Rpass-analysis=kernel-resource-usage]
root@gpu-10:/workdir/AMD-benchmarking-harness/kernels/TK/bf16fp32/mi325x/256_256_64_16# python test_python.py
src: 256_256_64_16.cpp
Warning: tk_kernel.cpython-313-x86_64-linux-gnu.so not found at /workdir/AMD-benchmarking-harness/kernels/TK/bf16fp32/mi325x/256_256_64_16/tk_kernel.cpython-313-x86_64-linux-gnu.so, skipping.
C_ref.dtype=torch.bfloat16
PyTorch reference average execution time: 1.3736 ms
PyTorch reference performance: 800.44 TFLOPS for 8192x8192 matrix multiplication.

C.dtype=torch.bfloat16
Average execution time: 1.4844 ms
Performance: 740.72 TFLOPS for 8192x8192 matrix multiplication.

Max error between kernel and reference: 0.03125
Max error: 0.03125
Mean error: 0.0020266701467335224
Number of large errors (>0.1): 0

diff[:32, :32].max() tensor(0.0156, device='cuda:0')
diff[:32, 32:64].max() tensor(0.0156, device='cuda:0')
diff[32:64, :32].max() tensor(0.0156, device='cuda:0')
diff[32:64, 32:64].max() tensor(0.0156, device='cuda:0')

diff[7168:7232, 7168:7232].max() tensor(0.0156, device='cuda:0')
diff[7232:7296, 7232:7296].max() tensor(0.0156, device='cuda:0')
diff[7296:7360, 7296:7360].max() tensor(0.0156, device='cuda:0')
diff[7360:7424, 7360:7424].max() tensor(0.0156, device='cuda:0')
```