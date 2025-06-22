#include "kittens.cuh"
#include "pyutils/pyutils.cuh"
using namespace kittens;

__device__ inline float4 load_global_vec_new(const float4* gptr) {
    float4 v;
    asm volatile(
        "global_load_dwordx4 %0, %1, off\n"
        : "=v"(v) 
        : "v"(gptr)
        : "memory"
    );
    return v;   
}

__device__ inline void store_shared_vec_new(uint32_t lds_off, float2 val) {
    asm volatile(
        "ds_write_b64 %0, %1\n"
        :
        : "v"(lds_off), "v"(val)
        : "memory"
    );
}

// Load from global memory to registers with proper batching for cache locality
template<int axis, bool assume_aligned,
         ducks::st::all ST, ducks::gl::all GL,
         ducks::coord::tile COORD = coord<ST>,
         int N_THREADS = WARP_THREADS>
__device__ inline void load_global_to_registers(
    float4* reg_buffer, int buffer_size,
    const GL& src, const COORD& idx, const ST& dst_template,
    int* load_metadata)
{
    using T = typename ST::dtype;
    const int row_stride = src.template stride<axis>();
    
    constexpr int elem_per_memcpy = sizeof(float4)/sizeof(typename ST::dtype);
    constexpr int elem_per_half_memcpy = sizeof(float2)/sizeof(typename ST::dtype);
    constexpr int memcpy_per_row = ST::cols / elem_per_memcpy;
    constexpr int total_calls = (ST::cols * ST::rows + N_THREADS*elem_per_memcpy-1) / (N_THREADS*elem_per_memcpy);

    coord<> unit_coord = idx.template unit_coord<axis, 3>();
    typename GL::dtype *src_ptr = (typename GL::dtype*)&src[unit_coord];
    const int laneid = threadIdx.x % N_THREADS;

    // Use same batching pattern as original for cache locality
    const int small_calls = 16;
    const int big_calls = (total_calls + small_calls - 1) / small_calls;

    // Store metadata for later use
    load_metadata[0] = total_calls;
    load_metadata[1] = small_calls;
    load_metadata[2] = big_calls;

    int buf_idx = 0;
    
    // Load in batches to maintain cache locality
    for (int i = 0; i < big_calls && buf_idx < buffer_size; i++) {
        const int offset = i * small_calls;
        
        // Load a batch of elements
        #pragma unroll
        for(int j = 0; j < small_calls; j++) {
            int load_idx = (offset + j) * N_THREADS + laneid;
            int row = load_idx / memcpy_per_row;
            int col = (load_idx % memcpy_per_row) * elem_per_memcpy;

            if (row < dst_template.rows && buf_idx < buffer_size) {
                reg_buffer[buf_idx] = load_global_vec_new((float4*) (src_ptr + (row * row_stride + col)));
                buf_idx++;
            }
        }
        
        // Wait for this batch to complete before moving to next batch
        // This maintains the spatial locality pattern from the original
        asm volatile("s_waitcnt vmcnt(0)");
    }
}

// Store from registers to shared memory (preserving the batched pattern)
template<ducks::st::all ST, int N_THREADS = WARP_THREADS>
__device__ inline void store_registers_to_shared(
    const float4* reg_buffer, ST& dst, 
    const int* load_metadata)
{
    constexpr int elem_per_memcpy = sizeof(float4)/sizeof(typename ST::dtype);
    constexpr int elem_per_half_memcpy = sizeof(float2)/sizeof(typename ST::dtype);
    constexpr int memcpy_per_row = ST::cols / elem_per_memcpy;
    
    uint32_t dst_ptr = reinterpret_cast<uintptr_t>(&dst.data[0]);
    const int laneid = threadIdx.x % N_THREADS;

    const int total_calls = load_metadata[0];
    const int small_calls = load_metadata[1];
    const int big_calls = load_metadata[2];

    int buf_idx = 0;
    
    // Store in the same batched pattern to maintain locality
    for (int i = 0; i < big_calls; i++) {
        const int offset = i * small_calls;
        
        #pragma unroll
        for(int j = 0; j < small_calls; j++) {
            int load_idx = (offset + j) * N_THREADS + laneid;
            int row = load_idx / memcpy_per_row;
            int col = (load_idx % memcpy_per_row) * elem_per_memcpy;

            if (row < dst.rows && buf_idx < 64) { // Safety check - use fixed limit
                const float4& buf_val = reg_buffer[buf_idx];
                store_shared_vec_new(dst.idx(dst_ptr, {row, col}), {buf_val.x, buf_val.y});
                store_shared_vec_new(dst.idx(dst_ptr, {row, col + elem_per_half_memcpy}), {buf_val.z, buf_val.w});
                buf_idx++;
            }
        }
        
        // Wait for this batch of stores to complete
        asm volatile("s_waitcnt lgkmcnt(0)");
    }
}