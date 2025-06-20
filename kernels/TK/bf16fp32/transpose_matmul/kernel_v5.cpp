#include "kittens.cuh"
#include "pyutils/pyutils.cuh"
using namespace kittens;

constexpr int BLOCK_SIZE = 128;  
constexpr int K_STEP     = 32;
constexpr int REG_BLOCK  = BLOCK_SIZE / 4;

#define NUM_WARPS 12
#define NUM_THREADS (kittens::WARP_THREADS * NUM_WARPS)

#define M 8192
#define K 8192
#define N 8192

using _gl_A = gl<bf16, -1, -1, -1, -1>;
using _gl_B = gl<bf16, -1, -1, -1, -1>;
using _gl_C = gl<float, -1, -1, -1, -1>;

using G = kittens::group<4>;

struct micro_globals {
    _gl_A a;
    _gl_B b;
    _gl_C c;
    dim3 grid()  { return dim3(N / BLOCK_SIZE, M / BLOCK_SIZE); } 
    dim3 block() { return dim3(NUM_THREADS); } 
    size_t dynamic_shared_memory() { return 32768; }
};

__global__ __launch_bounds__(NUM_THREADS, 2)
void micro_tk(const micro_globals g) {

    extern __shared__ alignment_dummy __shm[];
    shared_allocator al((int*)&__shm[0]);
    st_bf<BLOCK_SIZE, K_STEP> (&As)[2] = al.allocate<st_bf<BLOCK_SIZE, K_STEP>, 2>();
    st_bf<BLOCK_SIZE, K_STEP> (&Bs)[2] = al.allocate<st_bf<BLOCK_SIZE, K_STEP>, 2>();

    int tic = 0;
    int toc = 1;

    rt_bf<REG_BLOCK, K_STEP> a_reg, b_reg_0, b_reg_1;
    rt_fl<REG_BLOCK, REG_BLOCK, ducks::rt_layout::col> C_accum[2];
    for (int i = 0; i < 2; i++) { zero(C_accum[i]); }

    const int row = blockIdx.y;
    const int col = blockIdx.x;

    const int warp_group_id = kittens::warpgroupid();
    const int warp_id = kittens::warpid() - 4;
    const int warp_row = warp_id / 2;
    const int warp_col = warp_id % 2;
    const int warp_col_next = warp_col + 2;

    const int num_tiles = K / K_STEP;

    // Preload first tile into ping buffer
    if (warp_group_id == 0) {
        G::load(As[tic], g.a, {0, 0, row, 0});
        G::load(Bs[tic], g.b, {0, 0, col, 0});
    }
    __syncthreads();

    // Main ping-pong loop
    for (int tile = 0; tile < num_tiles; ++tile) {
        
        // Load next tile into pong buffer (if not last tile)
        if (tile + 1 < num_tiles && warp_group_id == 0) {
            G::load(As[toc], g.a, {0, 0, row, tile + 1});
            G::load(Bs[toc], g.b, {0, 0, col, tile + 1});
        }

        // All warps compute on current ping buffer
        if (warp_group_id != 0) {
            load(a_reg, subtile_inplace<REG_BLOCK, K_STEP>(As[tic], {warp_row, 0}));
            load(b_reg_0, subtile_inplace<REG_BLOCK, K_STEP>(Bs[tic], {warp_col, 0}));
            load(b_reg_1, subtile_inplace<REG_BLOCK, K_STEP>(Bs[tic], {warp_col_next, 0}));

            mma_ABt(C_accum[0], a_reg, b_reg_0, C_accum[0]);
            mma_ABt(C_accum[1], a_reg, b_reg_1, C_accum[1]);
        }

        // Sync and swap buffers
        __syncthreads();
        tic ^= 1;
        toc ^= 1;
    }

    // Store results
    if (warp_group_id != 0) {
        for (int i = 0; i < 2; i++) {
            const int global_row = row * 4 + warp_row;  
            const int global_col = col * 4 + i * 2 + warp_col;
            store(g.c, C_accum[i], {0, 0, global_row, global_col});
        }
    }
}

void dispatch_micro(micro_globals g) {
    unsigned long mem_size = g.dynamic_shared_memory();
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
    py::bind_kernel<micro_tk>(m, "micro_tk", &micro_globals::a, &micro_globals::b, &micro_globals::c); 
    py::bind_function<dispatch_micro>(m, "dispatch_micro", &micro_globals::a, &micro_globals::b, &micro_globals::c);
} 