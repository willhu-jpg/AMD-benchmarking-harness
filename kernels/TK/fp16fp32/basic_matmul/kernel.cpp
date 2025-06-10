#include "kittens.cuh"
#include "pyutils/pyutils.cuh"
using namespace kittens;

#define NUM_THREADS (kittens::WARP_THREADS)

#define M 8192
#define K 8192
#define N 8192

#define BN 128
#define BM 128
#define BK 16
#define WM 64
#define WN 64
#define TM 4
#define TN 1
#define WNITER 4
#define WMITER 4

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
    dim3 grid()  { return dim3(x=math.ceil(N / BN), y=math.ceil(M / BM)); } 

    // block - number of threads in a thread block
    dim3 block() { return dim3(NUM_THREADS); } 

    // Safe shared memory size for MI325X
    size_t dynamic_shared_memory() { return 32768; } 
};

__global__
void micro_tk(const micro_globals g) {

    const int C_row = blockIdx.y * BM;
    const int C_col = blockIdx.x * BN;

    // shared memory
    extern __shared__ alignment_dummy __shm[];
    shared_allocator al((int*)&__shm[0]);
    st_fl<BM, BK> (&As) = al.allocate<st_fl<BM, BK>>();
    st_fl<BK, BN> (&Bs) = al.allocate<st_fl<BK, BN>>();
    
    // register memory
    rt_bf<WM, BK> a;
    rt_bf<BK, BN, ducks::rt_layout::col> b;
    rt_fl<WM, BN, ducks::rt_layout::col> c;

    for (uint bkIdx = 0; bkIdx < K; bkIdx += BK) {
        // load from HBM to SMEM
        load(As, g.a, {0, 0, C_row, bkIdx});
        load(Bs, g.b, {0, 0, bkIdx, C_col});
        __syncthreads();

        // load from SMEM to registers
        load(a, g.a, {});
        load(b, g.b, {});
        load(c, g.c, {});
        zero(c);
        __syncthreads();

        mma_AB(c, a, b, c);
        store(g.c, c, {});
    }
}

// Launch Kernel
void dispatch_micro(micro_globals g) {

    unsigned long mem_size = kittens::MAX_SHARED_MEMORY;
    hipFuncSetAttribute(
        (void*)micro_tk,
        hipFuncAttributeMaxDynamicSharedMemorySize,
        mem_size
    );

    micro_tk<<<g.grid(), g.block(), mem_size>>>(g);
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