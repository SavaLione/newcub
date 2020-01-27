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
 * CUB umbrella include file
 */

#pragma once


// Block
#include <newcub/block/block_histogram.cuh>
#include <newcub/block/block_discontinuity.cuh>
#include <newcub/block/block_exchange.cuh>
#include <newcub/block/block_load.cuh>
#include <newcub/block/block_radix_rank.cuh>
#include <newcub/block/block_radix_sort.cuh>
#include <newcub/block/block_reduce.cuh>
#include <newcub/block/block_scan.cuh>
#include <newcub/block/block_store.cuh>
//#include <newcub/block/block_shift.cuh>

// Device
#include <newcub/device/device_histogram.cuh>
#include <newcub/device/device_partition.cuh>
#include <newcub/device/device_radix_sort.cuh>
#include <newcub/device/device_reduce.cuh>
#include <newcub/device/device_run_length_encode.cuh>
#include <newcub/device/device_scan.cuh>
#include <newcub/device/device_segmented_radix_sort.cuh>
#include <newcub/device/device_segmented_reduce.cuh>
#include <newcub/device/device_select.cuh>
#include <newcub/device/device_spmv.cuh>

// Grid
//#include <newcub/grid/grid_barrier.cuh>
#include <newcub/grid/grid_even_share.cuh>
#include <newcub/grid/grid_mapping.cuh>
#include <newcub/grid/grid_queue.cuh>

// Thread
#include <newcub/thread/thread_load.cuh>
#include <newcub/thread/thread_operators.cuh>
#include <newcub/thread/thread_reduce.cuh>
#include <newcub/thread/thread_scan.cuh>
#include <newcub/thread/thread_store.cuh>

// Warp
#include <newcub/warp/warp_reduce.cuh>
#include <newcub/warp/warp_scan.cuh>

// Iterator
#include <newcub/iterator/arg_index_input_iterator.cuh>
#include <newcub/iterator/cache_modified_input_iterator.cuh>
#include <newcub/iterator/cache_modified_output_iterator.cuh>
#include <newcub/iterator/constant_input_iterator.cuh>
#include <newcub/iterator/counting_input_iterator.cuh>
#include <newcub/iterator/tex_obj_input_iterator.cuh>
#include <newcub/iterator/tex_ref_input_iterator.cuh>
#include <newcub/iterator/transform_input_iterator.cuh>

// Util
#include <newcub/util_arch.cuh>
#include <newcub/util_debug.cuh>
#include <newcub/util_device.cuh>
#include <newcub/util_macro.cuh>
#include <newcub/util_ptx.cuh>
#include <newcub/util_type.cuh>

