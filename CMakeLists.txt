# Минимальная версия
cmake_minimum_required (VERSION 3.16)

set(NCUB_NAME newcub)
project(${NCUB_NAME})

################################################################
#
#	Константы проекта
#
################################################################

set(NCUB_CONSTANTS 1)

################################################################
# Параметры библиотеки
################################################################
set(NCUB_SHARED 0 CACHE BOOL "Shared library.")

################################################################
# Названия и компиляция субпроектов
################################################################

# New cub
set(NCUB_LIBRARY 1 CACHE BOOL "New cub library")

# Examples and test
set(NCUB_EXAMPLES 0 CACHE BOOL "newcub examples")
set(NCUB_TEST 0 CACHE BOOL "newcub test")
set(NCUB_TUNE 0 CACHE BOOL "newcub tune")

if(NCUB_EXAMPLES)
    # block
    set(NCUB_EXAMPLES_example_block_radix_sort 1 CACHE BOOL "example_block_radix_sort")
    set(NCUB_EXAMPLES_example_block_radix_sort_NAME example_block_radix_sort)

    set(NCUB_EXAMPLES_example_block_reduce 1 CACHE BOOL "example_block_reduce")
    set(NCUB_EXAMPLES_example_block_reduce_NAME example_block_reduce)

    set(NCUB_EXAMPLES_example_block_scan 1 CACHE BOOL "example_block_scan")
    set(NCUB_EXAMPLES_example_block_scan_NAME example_block_scan)

    #device
    set(NCUB_EXAMPLES_example_device_partition_flagged 1 CACHE BOOL "example_device_partition_flagged")
    set(NCUB_EXAMPLES_example_device_partition_flagged_NAME example_device_partition_flagged)

    set(NCUB_EXAMPLES_example_device_partition_if 1 CACHE BOOL "example_device_partition_if")
    set(NCUB_EXAMPLES_example_device_partition_if_NAME example_device_partition_if)

    set(NCUB_EXAMPLES_example_device_radix_sort 1 CACHE BOOL "example_device_radix_sort")
    set(NCUB_EXAMPLES_example_device_radix_sort_NAME example_device_radix_sort)

    set(NCUB_EXAMPLES_example_device_reduce 1 CACHE BOOL "example_device_reduce")
    set(NCUB_EXAMPLES_example_device_reduce_NAME example_device_reduce)

    set(NCUB_EXAMPLES_example_device_scan 1 CACHE BOOL "example_device_scan")
    set(NCUB_EXAMPLES_example_device_scan_NAME example_device_scan)

    set(NCUB_EXAMPLES_example_device_select_flagged 1 CACHE BOOL "example_device_select_flagged")
    set(NCUB_EXAMPLES_example_device_select_flagged_NAME example_device_select_flagged)

    set(NCUB_EXAMPLES_example_device_select_if 1 CACHE BOOL "example_device_select_if")
    set(NCUB_EXAMPLES_example_device_select_if_NAME example_device_select_if)

    set(NCUB_EXAMPLES_example_device_select_unique 1 CACHE BOOL "example_device_select_unique")
    set(NCUB_EXAMPLES_example_device_select_unique_NAME example_device_select_unique)

    set(NCUB_EXAMPLES_example_device_sort_find_non_trivial_runs 1 CACHE BOOL "example_device_sort_find_non_trivial_runs")
    set(NCUB_EXAMPLES_example_device_sort_find_non_trivial_runs_NAME example_device_sort_find_non_trivial_runs)
endif()

if(NCUB_TEST)
    set(NCUB_TEST_link 1 CACHE BOOL "link")
    set(NCUB_TEST_link_NAME link)

    set(NCUB_TEST_test_allocator 1 CACHE BOOL "test_allocator")
    set(NCUB_TEST_test_allocator_NAME test_allocator)

    set(NCUB_TEST_test_block_histogram 1 CACHE BOOL "test_block_histogram")
    set(NCUB_TEST_test_block_histogram_NAME test_block_histogram)
    
    set(NCUB_TEST_test_block_load_store 1 CACHE BOOL "test_block_load_store")
    set(NCUB_TEST_test_block_load_store_NAME test_block_load_store)

    set(NCUB_TEST_test_block_radix_sort 1 CACHE BOOL "test_block_radix_sort")
    set(NCUB_TEST_test_block_radix_sort_NAME test_block_radix_sort)

    set(NCUB_TEST_test_block_reduce 1 CACHE BOOL "test_block_reduce")
    set(NCUB_TEST_test_block_reduce_NAME test_block_reduce)

    set(NCUB_TEST_test_block_scan 1 CACHE BOOL "test_block_scan")
    set(NCUB_TEST_test_block_scan_NAME test_block_scan)

    set(NCUB_TEST_test_device_histogram 1 CACHE BOOL "test_device_histogram")
    set(NCUB_TEST_test_device_histogram_NAME test_device_histogram)

    set(NCUB_TEST_test_device_radix_sort 1 CACHE BOOL "test_device_radix_sort")
    set(NCUB_TEST_test_device_radix_sort_NAME test_device_radix_sort)

    set(NCUB_TEST_test_device_reduce 1 CACHE BOOL "test_device_reduce")
    set(NCUB_TEST_test_device_reduce_NAME test_device_reduce)

    set(NCUB_TEST_test_device_reduce_by_key 1 CACHE BOOL "test_device_reduce_by_key")
    set(NCUB_TEST_test_device_reduce_by_key_NAME test_device_reduce_by_key)

    set(NCUB_TEST_test_device_run_length_encode 1 CACHE BOOL "test_device_run_length_encode")
    set(NCUB_TEST_test_device_run_length_encode_NAME test_device_run_length_encode)

    set(NCUB_TEST_test_device_scan 1 CACHE BOOL "test_device_scan")
    set(NCUB_TEST_test_device_scan_NAME test_device_scan)

    set(NCUB_TEST_test_device_select_if 1 CACHE BOOL "test_device_select_if")
    set(NCUB_TEST_test_device_select_if_NAME test_device_select_if)

    set(NCUB_TEST_test_device_select_unique 1 CACHE BOOL "test_device_select_unique")
    set(NCUB_TEST_test_device_select_unique_NAME test_device_select_unique)

    set(NCUB_TEST_test_grid_barrier 1 CACHE BOOL "test_grid_barrier")
    set(NCUB_TEST_test_grid_barrier_NAME test_grid_barrier)

    set(NCUB_TEST_test_iterator 1 CACHE BOOL "test_iterator")
    set(NCUB_TEST_test_iterator_NAME test_iterator)

    set(NCUB_TEST_test_warp_reduce 1 CACHE BOOL "test_warp_reduce")
    set(NCUB_TEST_test_warp_reduce_NAME test_warp_reduce)

    set(NCUB_TEST_test_warp_scan 1 CACHE BOOL "test_warp_scan")
    set(NCUB_TEST_test_warp_scan_NAME test_warp_scan)
endif()

if(NCUB_TUNE)
    set(NCUB_TUNE_tune_device_reduce 1 CACHE BOOL "tune_device_reduce")
    set(NCUB_TEST_tune_device_reduce_NAME tune_device_reduce)
endif()

################################################################
#
#	Source files
#
################################################################

# Библиотека newmoderngpu
if(NCUB_LIBRARY)
	add_subdirectory(src/)
endif()

################################################################
#	Tests and examples
################################################################

# Examples
if(NCUB_EXAMPLES)
	add_subdirectory(examples/)
endif()

# Tests
if(NCUB_TEST)
	add_subdirectory(test/)
endif()

# Tune
if(NCUB_TUNE)
	add_subdirectory(tune/)
endif()