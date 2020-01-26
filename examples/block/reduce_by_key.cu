/*
 * Copyright (c) 2020 Savely Pototsky (SavaLione)
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#include <newcub/cub.cuh>


template <
    int         BLOCK_THREADS,          ///< Number of CTA threads
    typename    KeyT,                   ///< Key type
    typename    ValueT>                 ///< Value type
__global__ void Kernel()
{
    // Tuple type for scanning (pairs accumulated segment-value with segment-index)
    typedef cub::KeyValuePair<int, ValueT> OffsetValuePairT;

    // Reduce-value-by-segment scan operator
    typedef cub::ReduceBySegmentOp<cub::Sum> ReduceBySegmentOpT;

    // Parameterized BlockDiscontinuity type for setting head flags
    typedef cub::BlockDiscontinuity<
            KeyT,
            BLOCK_THREADS>
        BlockDiscontinuityKeysT;

    // Parameterized BlockScan type
    typedef cub::BlockScan<
            OffsetValuePairT,
            BLOCK_THREADS,
            cub::BLOCK_SCAN_WARP_SCANS>
        BlockScanT;

    // Shared memory
    __shared__ union TempStorage
    {
        typename BlockScanT::TempStorage                scan;           // Scan storage
        typename BlockDiscontinuityKeysT::TempStorage   discontinuity;  // Discontinuity storage
    } temp_storage;


    // Read data (each thread gets 3 items each, every 9 items is a segment)
    KeyT    my_keys[3]      = {threadIdx.x / 3, threadIdx.x / 3, threadIdx.x / 3};
    ValueT  my_values[3]    = {1, 1, 1};

    // Set head segment head flags
    int     my_flags[3];
    BlockDiscontinuityKeysT(temp_storage.discontinuity).FlagHeads(
        my_flags,
        my_keys,
        cub::Inequality());

    __syncthreads();






}
