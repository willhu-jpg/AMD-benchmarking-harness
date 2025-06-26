#include "kittens.cuh"
#include "pyutils/pyutils.cuh"
#include "utils.cpp"
using namespace kittens;

constexpr int BLOCK_SIZE       = 256;  
constexpr int K_STEP           = 64;
constexpr int REG_BLOCK        = BLOCK_SIZE / 4;
constexpr int DOT_SLICE        = 32;

#define NUM_WARPS 8
#define NUM_WARPS_IN_GROUP 4
#define NUM_THREADS (kittens::WARP_THREADS * NUM_WARPS)
#define NUM_THREADS_IN_GROUP (kittens::WARP_THREADS * NUM_WARPS_IN_GROUP)

#define M 8192
#define K 8192
#define N 8192

using _gl_A = gl<bf16, -1, -1, -1, -1>;
using _gl_B = gl<bf16, -1, -1, -1, -1>;
using _gl_C = gl<float, -1, -1, -1, -1>;

using G = kittens::group<NUM_WARPS>;

struct micro_globals {
    _gl_A a;
    _gl_B b;
    _gl_C c;
    dim3 grid()  { return dim3(N / BLOCK_SIZE, M / BLOCK_SIZE); } 
    dim3 block() { return dim3(NUM_THREADS); } 
    size_t dynamic_shared_memory() { return 65536; }
};

__global__ __launch_bounds__(NUM_THREADS, 1)
void micro_tk(const micro_globals g) {
    extern __shared__ alignment_dummy __shm[];
    shared_allocator al((int*)&__shm[0]);
    st_bf<BLOCK_SIZE, K_STEP> (&As) = al.allocate<st_bf<BLOCK_SIZE, K_STEP>>();
    st_bf<BLOCK_SIZE, K_STEP> (&Bs) = al.allocate<st_bf<BLOCK_SIZE, K_STEP>>();

    rt_bf<REG_BLOCK, DOT_SLICE> a_reg_00, a_reg_01, b_reg_0;
    rt_bf<REG_BLOCK, DOT_SLICE> a_reg_10, a_reg_11, b_reg_1;
    rt_fl<REG_BLOCK, REG_BLOCK, ducks::rt_layout::col> C_accum[2];
    for (int i = 0; i < 2; i++) { zero(C_accum[i]); }

    // Reduced buffer size to minimize register pressure
    constexpr int BUFFER_SIZE = 128; 
    float4 a_buffer_next[BUFFER_SIZE];
    float4 b_buffer_next[BUFFER_SIZE];

    const int row = blockIdx.y;
    const int col = blockIdx.x;

    const int warp_id = kittens::warpid();
    const int warp_row = warp_id / 4;
    const int warp_col = warp_id % 4;

    const int num_tiles = K / K_STEP;

    // Load first tile into shared memory
    G::load(As, g.a, {0, 0, row, 0});
    G::load(Bs, g.b, {0, 0, col, 0});

    if (warp_row == 1) {
        __syncthreads();
    }

    for (int tile = 0; tile < num_tiles; ++tile) {
        const bool loading = tile + 1 < num_tiles;
        
        // 1st cluster interleaved shared->local and global->local reads
        load(a_reg_00, subtile_inplace<REG_BLOCK, DOT_SLICE>(As, {warp_row, 0}));
        load(a_reg_01, subtile_inplace<REG_BLOCK, DOT_SLICE>(As, {warp_row + 2, 0}));
        load(b_reg_0, subtile_inplace<REG_BLOCK, DOT_SLICE>(Bs, {warp_col, 0}));

        if (loading) {
        load_global_to_registers<2, false, st_bf<BLOCK_SIZE, K_STEP>, _gl_A, coord<st_bf<BLOCK_SIZE, K_STEP>>, NUM_THREADS>(
            a_buffer_next, BUFFER_SIZE, g.a, {0, 0, row, tile + 1}, As);
        }

        load(a_reg_10, subtile_inplace<REG_BLOCK, DOT_SLICE>(As, {warp_row, 1}));
        load(a_reg_11, subtile_inplace<REG_BLOCK, DOT_SLICE>(As, {warp_row + 2, 1}));
        load(b_reg_1, subtile_inplace<REG_BLOCK, DOT_SLICE>(Bs, {warp_col, 1}));

        if (loading) {
            load_global_to_registers<2, false, st_bf<BLOCK_SIZE, K_STEP>, _gl_B, coord<st_bf<BLOCK_SIZE, K_STEP>>, NUM_THREADS>(
                b_buffer_next, BUFFER_SIZE, g.b, {0, 0, col, tile + 1}, Bs);
        }
        __builtin_amdgcn_s_barrier();

        // 2nd cluster mma_slice[0]
        mma_ABt(C_accum[0], a_reg_00, b_reg_0, C_accum[0]);
        mma_ABt(C_accum[1], a_reg_01, b_reg_0, C_accum[1]);
        __builtin_amdgcn_s_barrier();

        // 3rd cluster local writes from local->shared
        if (loading) {
            asm volatile("s_waitcnt vmcnt(0)");
            store_registers_to_shared<st_bf<BLOCK_SIZE, K_STEP>, NUM_THREADS>(
                a_buffer_next, As);
            store_registers_to_shared<st_bf<BLOCK_SIZE, K_STEP>, NUM_THREADS>(
                b_buffer_next, Bs);
            __builtin_amdgcn_s_barrier();
        }

        // 4th cluster mma_slice[1]
        mma_ABt(C_accum[0], a_reg_10, b_reg_1, C_accum[0]);
        mma_ABt(C_accum[1], a_reg_11, b_reg_1, C_accum[1]);
        __builtin_amdgcn_s_barrier();
    }

    if (warp_row == 0) {
        __syncthreads();
    }

    store(g.c, C_accum[0], {0, 0, row * 4 + warp_row, col * 4 + warp_col});
    store(g.c, C_accum[1], {0, 0, row * 4 + warp_row + 2, col * 4 + warp_col});
    
}

void dispatch_micro(micro_globals g) {
    unsigned long mem_size = g.dynamic_shared_memory();
    hipFuncSetAttribute((void*)micro_tk, hipFuncAttributeMaxDynamicSharedMemorySize, mem_size);
    micro_tk<<<g.grid(), g.block(), mem_size>>>(g);
    hipDeviceSynchronize();
}

PYBIND11_MODULE(tk_kernel, m) {
    m.doc() = "tk_kernel python module";
    py::bind_kernel<micro_tk>(m, "micro_tk", &micro_globals::a, &micro_globals::b, &micro_globals::c); 
    py::bind_function<dispatch_micro>(m, "dispatch_micro", &micro_globals::a, &micro_globals::b, &micro_globals::c);
}