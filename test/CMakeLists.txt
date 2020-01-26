################################################################
#
#	Test
#
################################################################

link_libraries(${NCUB_NAME})

include_directories(${PROJECT_SOURCE_DIR}/assets)
include_directories(${PROJECT_SOURCE_DIR}/include)

################################################################
# link
################################################################
if(NCUB_EXAMPLES_link)
    project(${NCUB_EXAMPLES_link_NAME})
    add_executable(${NCUB_EXAMPLES_link_NAME}
        link/link_a.cu
        link/link_b.cu
        link/link_main.cpp
    )
endif()

################################################################
# test_allocator
################################################################
if(NCUB_TEST_test_allocator)
    project(${NCUB_TEST_test_allocator_NAME})
    add_executable(${NCUB_TEST_test_allocator_NAME} test_allocator.cu)
endif()

################################################################
# test_block_histogram
################################################################
if(NCUB_TEST_test_block_histogram)
    project(${NCUB_TEST_test_block_histogram_NAME})
    add_executable(${NCUB_TEST_test_block_histogram_NAME} test_block_histogram.cu)
endif()

################################################################
# test_block_load_store
################################################################
if(NCUB_TEST_test_block_load_store)
    project(${NCUB_TEST_test_block_load_store_NAME})
    add_executable(${NCUB_TEST_test_block_load_store_NAME} test_block_load_store.cu)
endif()

################################################################
# test_block_radix_sort
################################################################
if(NCUB_TEST_test_block_radix_sort)
    project(${NCUB_TEST_test_block_radix_sort_NAME})
    add_executable(${NCUB_TEST_test_block_radix_sort_NAME} test_block_radix_sort.cu)
endif()

################################################################
# test_block_reduce
################################################################
if(NCUB_TEST_test_block_reduce)
    project(${NCUB_TEST_test_block_reduce_NAME})
    add_executable(${NCUB_TEST_test_block_reduce_NAME} test_block_reduce.cu)
endif()

################################################################
# test_block_scan
################################################################
if(NCUB_TEST_test_block_scan)
    project(${NCUB_TEST_test_block_scan_NAME})
    add_executable(${NCUB_TEST_test_block_scan_NAME} test_block_scan.cu)
endif()

################################################################
# test_device_histogram
################################################################
if(NCUB_TEST_test_device_histogram)
    project(${NCUB_TEST_test_device_histogram_NAME})
    add_executable(${NCUB_TEST_test_device_histogram_NAME} test_device_histogram.cu)
endif()

################################################################
# test_device_radix_sort
################################################################
if(NCUB_TEST_test_device_radix_sort)
    project(${NCUB_TEST_test_device_radix_sort_NAME})
    add_executable(${NCUB_TEST_test_device_radix_sort_NAME} test_device_radix_sort.cu)
endif()

################################################################
# test_device_reduce
################################################################
if(NCUB_TEST_test_device_reduce)
    project(${NCUB_TEST_test_device_reduce_NAME})
    add_executable(${NCUB_TEST_test_device_reduce_NAME} test_device_reduce.cu)
endif()

################################################################
# test_device_reduce_by_key
################################################################
if(NCUB_TEST_test_device_reduce_by_key)
    project(${NCUB_TEST_test_device_reduce_by_key_NAME})
    add_executable(${NCUB_TEST_test_device_reduce_by_key_NAME} test_device_reduce_by_key.cu)
endif()

################################################################
# test_device_run_length_encode
################################################################
if(NCUB_TEST_test_device_run_length_encode)
    project(${NCUB_TEST_test_device_run_length_encode_NAME})
    add_executable(${NCUB_TEST_test_device_run_length_encode_NAME} test_device_run_length_encode.cu)
endif()

################################################################
# test_device_scan
################################################################
if(NCUB_TEST_test_device_scan)
    project(${NCUB_TEST_test_device_scan_NAME})
    add_executable(${NCUB_TEST_test_device_scan_NAME} test_device_scan.cu)
endif()

################################################################
# test_device_select_if
################################################################
if(NCUB_TEST_test_device_select_if)
    project(${NCUB_TEST_test_device_select_if_NAME})
    add_executable(${NCUB_TEST_test_device_select_if_NAME} test_device_select_if.cu)
endif()

################################################################
# test_device_select_unique
################################################################
if(NCUB_TEST_test_device_select_unique)
    project(${NCUB_TEST_test_device_select_unique_NAME})
    add_executable(${NCUB_TEST_test_device_select_unique_NAME} test_device_select_unique.cu)
endif()

################################################################
# test_grid_barrier
################################################################
if(NCUB_TEST_test_grid_barrier)
    project(${NCUB_TEST_test_grid_barrier_NAME})
    add_executable(${NCUB_TEST_test_grid_barrier_NAME} test_grid_barrier.cu)
endif()

################################################################
# test_iterator
################################################################
if(NCUB_TEST_test_iterator)
    project(${NCUB_TEST_test_iterator_NAME})
    add_executable(${NCUB_TEST_test_iterator_NAME} test_iterator.cu)
endif()

################################################################
# test_warp_reduce
################################################################
if(NCUB_TEST_test_warp_reduce)
    project(${NCUB_TEST_test_warp_reduce_NAME})
    add_executable(${NCUB_TEST_test_warp_reduce_NAME} test_warp_reduce.cu)
endif()

################################################################
# test_warp_scan
################################################################
if(NCUB_TEST_test_warp_scan)
    project(${NCUB_TEST_test_warp_scan_NAME})
    add_executable(${NCUB_TEST_test_warp_scan_NAME} test_warp_scan.cu)
endif()