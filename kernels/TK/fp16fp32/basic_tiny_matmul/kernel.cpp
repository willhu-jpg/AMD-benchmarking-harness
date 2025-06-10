#include "kittens.cuh"
#include "pyutils/pyutils.cuh"
using namespace kittens;

#define NUM_THREADS (kittens::WARP_THREADS) // use 1 warp

#define M 16
#define K 16
#define N 16

using _gl_A = gl<float, -1, -1, -1, -1, st_fl<M, K>>;
using _gl_B = gl<float, -1, -1, -1, -1, st_fl<K, N>>;
using _gl_C = gl<float, -1, -1, -1, -1, st_fl<M, N>>;

struct micro_globals {
    _gl_A a;
    _gl_B b;
    _gl_C c;
    float alpha;
    float beta;

    // grid - number of thread blocks we are launching
    dim3 grid()  { return dim3(c.batch, c.depth, (c.rows * c.cols + NUM_THREADS - 1) / NUM_THREADS); } 

    // block - number of threads in a thread block
    dim3 block() { return dim3(NUM_THREADS); } 

    // Safe shared memory size for MI325X
    size_t dynamic_shared_memory() { return 32768; } 
};

__global__
void micro_tk(const micro_globals g) {
    
    // register memory
    rt_bf<M, K> a;
    rt_bf<K, N, ducks::rt_layout::col> b;
    rt_fl<M, N, ducks::rt_layout::col> c;

    load(a, g.a, {});
    load(b, g.b, {});
    load(c, g.c, {});
    zero(c);
    __syncthreads();

    mma_AB(c, a, b, c);
    store(g.c, c, {});
}

// Launch Kernel
void dispatch_micro(micro_globals g) {

    unsigned long mem_size = kittens::MAX_SHARED_MEMORY;
    hipFuncSetAttribute(
        (void*)micro_tk,
        hipFuncAttributeMaxDynamicSharedMemorySize,
        mem_size
    );

    micro_tk<<<1, 64, mem_size>>>(g);
    hipDeviceSynchronize();
}

PYBIND11_MODULE(tk_kernel, m) {
    m.doc() = "tk_kernel python module";
    // For wrapping kernels directly.
    // Old: BIND_KERNEL(m, "micro_tk", micro_tk, micro_globals, x, o); 
    py::bind_kernel<micro_tk>(m, "micro_tk", &micro_globals::a, &micro_globals::b, &micro_globals::c,
                              &micro_globals::alpha, &micro_globals::beta); 

    // For host functions that wrap the kernel, this will be called from Python
    // Old: BIND_FUNCTION(m, "dispatch_micro", dispatch_micro, micro_globals, x, o); 
    py::bind_function<dispatch_micro>(m, "dispatch_micro", &micro_globals::a, &micro_globals::b, &micro_globals::c,
                                      &micro_globals::alpha, &micro_globals::beta);
}