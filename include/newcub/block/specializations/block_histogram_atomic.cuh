/*
 * Copyright (c) 2011, Duane Merrill
 * Copyright (c) 2011-2018, NVIDIA CORPORATION
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

/**
 * \file
 * The cub::BlockHistogramAtomic class provides atomic-based methods for constructing block-wide histograms from data samples partitioned across a CUDA thread block.
 */

#ifndef NEWCUB_BLOCK_SPECIALIZATIONS_BLOCK_HISTOGRAM_ATOMIC_CUH
#define NEWCUB_BLOCK_SPECIALIZATIONS_BLOCK_HISTOGRAM_ATOMIC_CUH

#include <newcub/util_namespace.cuh>

/// Optional outer namespace(s)
CUB_NS_PREFIX

/// CUB namespace
namespace cub {


/**
 * \brief The BlockHistogramAtomic class provides atomic-based methods for constructing block-wide histograms from data samples partitioned across a CUDA thread block.
 */
template <int BINS>
struct BlockHistogramAtomic
{
    /// Shared memory storage layout type
    struct TempStorage {};


    /// Constructor
    __device__ __forceinline__ BlockHistogramAtomic(
        TempStorage &temp_storage)
    {}


    /// Composite data onto an existing histogram
    template <
        typename            T,
        typename            CounterT,     
        int                 ITEMS_PER_THREAD>
    __device__ __forceinline__ void Composite(
        T                   (&items)[ITEMS_PER_THREAD],     ///< [in] Calling thread's input values to histogram
        CounterT             histogram[BINS])                 ///< [out] Reference to shared/device-accessible memory histogram
    {
        // Update histogram
        #pragma unroll
        for (int i = 0; i < ITEMS_PER_THREAD; ++i)
        {
              atomicAdd(histogram + items[i], 1);
        }
    }

};

}               // CUB namespace
CUB_NS_POSTFIX  // Optional outer namespace(s)

#endif // NEWCUB_BLOCK_SPECIALIZATIONS_BLOCK_HISTOGRAM_ATOMIC_CUH