```
root@gpu-10:/workdir/AMD-benchmarking-harness/kernels/TK/bf16fp32/mi325x/scratch_v4# make
/opt/rocm/bin/hipcc kernel.cpp -DKITTENS_CDNA3 --offload-arch=gfx942 -mcpu=gfx942 -O3 -DNDEBUG -ffast-math -funroll-loops -fvectorize -Rpass-analysis=kernel-resource-usage -Rpass=loop-vectorize -std=c++20 -w --save-temps -I/workdir/AMD-benchmarking-harness/ThunderKittens-HIP/include -I/workdir/AMD-benchmarking-harness/ThunderKittens-HIP/prototype -Rpass-analysis=kernel-resource-usage -Xclang -Rpass=kernel-resource-usage -I/workdir/AMD-benchmarking-harness/ThunderKittens-HIP/include -I/opt/rocm/include/hip  -fopenmp -lrocblas \
    -o matmul_benchmark 2>&1 | tee /shared/amdgpu/home/tech_ops_amd_xqh/simran/data_logs/0710_0201_outputs/make_build.log
remark: kernel.cpp:44:0: Function Name: _Z8micro_tk13micro_globals [-Rpass-analysis=kernel-resource-usage]
remark: kernel.cpp:44:0:     SGPRs: 35 [-Rpass-analysis=kernel-resource-usage]
remark: kernel.cpp:44:0:     VGPRs: 250 [-Rpass-analysis=kernel-resource-usage]
remark: kernel.cpp:44:0:     AGPRs: 0 [-Rpass-analysis=kernel-resource-usage]
remark: kernel.cpp:44:0:     ScratchSize [bytes/lane]: 0 [-Rpass-analysis=kernel-resource-usage]
remark: kernel.cpp:44:0:     Dynamic Stack: False [-Rpass-analysis=kernel-resource-usage]
remark: kernel.cpp:44:0:     Occupancy [waves/SIMD]: 2 [-Rpass-analysis=kernel-resource-usage]
remark: kernel.cpp:44:0:     SGPRs Spill: 0 [-Rpass-analysis=kernel-resource-usage]
remark: kernel.cpp:44:0:     VGPRs Spill: 0 [-Rpass-analysis=kernel-resource-usage]
remark: kernel.cpp:44:0:     LDS Size [bytes/block]: 0 [-Rpass-analysis=kernel-resource-usage]
root@gpu-10:/workdir/AMD-benchmarking-harness/kernels/TK/bf16fp32/mi325x/scratch_v4# ls
Makefile                                kernel-hip-amdgcn-amd-amdhsa-gfx942.hipi  kernel-hip-amdgcn-amd-amdhsa-gfx942.out.resolution.txt  kernel-host-x86_64-unknown-linux-gnu.hipi  kernel.cpp                              matmul_benchmark
README.md                               kernel-hip-amdgcn-amd-amdhsa-gfx942.o     kernel-hip-amdgcn-amd-amdhsa-gfx942.s                   kernel-host-x86_64-unknown-linux-gnu.o     kernel.cpp-hip-amdgcn-amd-amdhsa.hipfb  ui_output_agent_13383_dispatch_1
kernel-hip-amdgcn-amd-amdhsa-gfx942.bc  kernel-hip-amdgcn-amd-amdhsa-gfx942.out   kernel-host-x86_64-unknown-linux-gnu.bc                 kernel-host-x86_64-unknown-linux-gnu.s     launch.cpp
root@gpu-10:/workdir/AMD-benchmarking-harness/kernels/TK/bf16fp32/mi325x/scratch_v4# ./matmul_benchmark
--------------------  M_size=8192 N_size=8192 K_size=8192  --------------------
Allocated host memory
Initialized matrices
Performed CPU matrix multiplication
Allocated device memory
Copied matrices to device


=== ThunderKittens Kernel ===
ThunderKittens execution time: 1721.2 us
ThunderKittens performance: 638.806 TFLOPs

=== rocBLAS Baseline ===
rocBLAS execution time: 1482.39 us
rocBLAS performance: 741.714 TFLOPs

=== Performance Summary ===
ThunderKittens: 638.806 TFLOPs
rocBLAS:        741.714 TFLOPs
Speedup:        0.861257x
Copied results back to host
Converted results to float

=== Correctness Analysis: ThunderKittens vs rocBLAS ===
Difference at [1,3957]: TK=6.4375 vs BLAS=6.46875 (diff=0.03125)
Difference at [4,1544]: TK=12.75 vs BLAS=12.8125 (diff=0.0625)
Difference at [5,1353]: TK=-2.40625 vs BLAS=-2.39062 (diff=0.015625)
Difference at [6,4675]: TK=-2.03125 vs BLAS=-2.04688 (diff=0.015625)
Difference at [12,7996]: TK=3.6875 vs BLAS=3.67188 (diff=0.015625)
Difference at [15,1482]: TK=-7.625 vs BLAS=-7.65625 (diff=0.03125)
Difference at [16,460]: TK=4.4375 vs BLAS=4.40625 (diff=0.03125)
Difference at [16,532]: TK=-5.25 vs BLAS=-5.28125 (diff=0.03125)
Difference at [16,1336]: TK=2.35938 vs BLAS=2.34375 (diff=0.015625)
Difference at [20,7041]: TK=3.0625 vs BLAS=3.07812 (diff=0.015625)
Difference at [20,7790]: TK=-11.8125 vs BLAS=-11.875 (diff=0.0625)
Difference at [24,2714]: TK=7.90625 vs BLAS=7.875 (diff=0.03125)
Difference at [30,2359]: TK=-10.25 vs BLAS=-10.3125 (diff=0.0625)
Difference at [35,1614]: TK=12.8125 vs BLAS=12.875 (diff=0.0625)
Difference at [41,2720]: TK=11.8125 vs BLAS=11.75 (diff=0.0625)
Difference at [43,2938]: TK=6 vs BLAS=6.03125 (diff=0.03125)
Difference at [48,2352]: TK=5.1875 vs BLAS=5.21875 (diff=0.03125)
Difference at [52,1705]: TK=2.92188 vs BLAS=2.90625 (diff=0.015625)
Difference at [54,5590]: TK=-2.92188 vs BLAS=-2.90625 (diff=0.015625)
Difference at [54,6952]: TK=-3.60938 vs BLAS=-3.59375 (diff=0.015625)
... (showing only first 20 differences)

Correctness Summary:
Max error:     0.125
Mean error:    1.7262e-06
Large errors:  2906 / 67108864
Accuracy:      99.9957%

=== CPU Reference Comparison ===
TK vs CPU errors:     1957
BLAS vs CPU errors:   1957
```