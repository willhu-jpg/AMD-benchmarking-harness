extern "C" __global__ void matmul_kernel(int M, int N, int K, float *A, float *B, float *C, float alpha, float beta) {

    #define BlockSize 16

    const unsigned int tx = threadIdx.x;
    const unsigned int ty = threadIdx.y;
    const unsigned int bx = blockIdx.x;
    const unsigned int by = blockIdx.y;

    const unsigned int a_cols = K;

    // b_cols must match the number of output matrix columns
    const unsigned int b_cols = blockDim.x * gridDim.x;

    // The number of tiles is deterimed by A's columns and B's rows
    const unsigned int steps = a_cols / BlockSize;

    // thread_result is the accumulation variable
    float thread_result = 0.0f;

    for (unsigned int step = 0; step < steps; step++) {
        // Shared memory is used to cache the tile from both input matrices
        // The tile is a square of size BlockSize x BlockSize
        __shared__ float As[BlockSize][BlockSize];
        __shared__ float Bs[BlockSize][BlockSize];

        // Index of the top-left element of the tile in A
        // BlockSize * a_cols * by is the number of elements to move "down"
        // BlockSize * step is the number of elements to move "right"
        const unsigned int a_idx = BlockSize * (a_cols * by + step);

        // Index of the top-left element of the tile in B
        // BlockSize * b_cols * step is the number of elements to move "down"
        // BlockSize * bx is the number of elements to move "right"
        const unsigned int b_idx = BlockSize * (b_cols * step + bx);

        // Load each element in the tile to shared memory
        As[ty][tx] = A[a_idx + a_cols * ty + tx];
        Bs[ty][tx] = B[b_idx + b_cols * ty + tx];

        // Wait for all threads to finish loading
        __syncthreads();

        // Multiply the tile and accumulate the result
        for (unsigned int i = 0; i < BlockSize; i++) {
            thread_result += As[ty][i] * Bs[i][tx];
        }

        // Wait for all threads to finish multiplying
        __syncthreads();
    }

    // Calculate the index of the top-left element of the output block
    const unsigned block_offset = b_cols * BlockSize * by + BlockSize * bx;

    // Write the result to the output matrix
    C[block_offset + b_cols * ty + tx] = alpha * thread_result + beta * C[block_offset + b_cols * ty + tx];

}