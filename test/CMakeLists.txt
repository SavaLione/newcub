################################################################
#
#	Test
#
################################################################

include_directories(${CMAKE_SOURCE_DIR}/assets)

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
    target_link_libraries(${NCUB_EXAMPLES_link_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_link_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_allocator
################################################################
if(NCUB_TEST_test_allocator)
    project(${NCUB_TEST_test_allocator_NAME})
    add_executable(${NCUB_TEST_test_allocator_NAME} test_allocator.cu)
    target_link_libraries(${NCUB_TEST_test_allocator_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_allocator_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_block_histogram
################################################################
if(NCUB_TEST_test_block_histogram)
    project(${NCUB_TEST_test_block_histogram_NAME})
    add_executable(${NCUB_TEST_test_block_histogram_NAME} test_block_histogram.cu)
    target_link_libraries(${NCUB_TEST_test_block_histogram_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_block_histogram_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_block_load_store
################################################################
if(NCUB_TEST_test_block_load_store)
    project(${NCUB_TEST_test_block_load_store_NAME})
    add_executable(${NCUB_TEST_test_block_load_store_NAME} test_block_load_store.cu)
    target_link_libraries(${NCUB_TEST_test_block_load_store_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_block_load_store_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_block_radix_sort
################################################################
if(NCUB_TEST_test_block_radix_sort)
    project(${NCUB_TEST_test_block_radix_sort_NAME})
    add_executable(${NCUB_TEST_test_block_radix_sort_NAME} test_block_radix_sort.cu)
    target_link_libraries(${NCUB_TEST_test_block_radix_sort_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_block_radix_sort_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_block_reduce
################################################################
if(NCUB_TEST_test_block_reduce)
    project(${NCUB_TEST_test_block_reduce_NAME})
    add_executable(${NCUB_TEST_test_block_reduce_NAME} test_block_reduce.cu)
    target_link_libraries(${NCUB_TEST_test_block_reduce_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_block_reduce_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_block_scan
################################################################
if(NCUB_TEST_test_block_scan)
    project(${NCUB_TEST_test_block_scan_NAME})
    add_executable(${NCUB_TEST_test_block_scan_NAME} test_block_scan.cu)
    target_link_libraries(${NCUB_TEST_test_block_scan_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_block_scan_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_device_histogram
################################################################
if(NCUB_TEST_test_device_histogram)
    project(${NCUB_TEST_test_device_histogram_NAME})
    add_executable(${NCUB_TEST_test_device_histogram_NAME} test_device_histogram.cu)
    target_link_libraries(${NCUB_TEST_test_device_histogram_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_device_histogram_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_device_radix_sort
################################################################
if(NCUB_TEST_test_device_radix_sort)
    project(${NCUB_TEST_test_device_radix_sort_NAME})
    add_executable(${NCUB_TEST_test_device_radix_sort_NAME} test_device_radix_sort.cu)
    target_link_libraries(${NCUB_TEST_test_device_radix_sort_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_device_radix_sort_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_device_reduce
################################################################
if(NCUB_TEST_test_device_reduce)
    project(${NCUB_TEST_test_device_reduce_NAME})
    add_executable(${NCUB_TEST_test_device_reduce_NAME} test_device_reduce.cu)
    target_link_libraries(${NCUB_TEST_test_device_reduce_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_device_reduce_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_device_reduce_by_key
################################################################
if(NCUB_TEST_test_device_reduce_by_key)
    project(${NCUB_TEST_test_device_reduce_by_key_NAME})
    add_executable(${NCUB_TEST_test_device_reduce_by_key_NAME} test_device_reduce_by_key.cu)
    target_link_libraries(${NCUB_TEST_test_device_reduce_by_key_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_device_reduce_by_key_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_device_run_length_encode
################################################################
if(NCUB_TEST_test_device_run_length_encode)
    project(${NCUB_TEST_test_device_run_length_encode_NAME})
    add_executable(${NCUB_TEST_test_device_run_length_encode_NAME} test_device_run_length_encode.cu)
    target_link_libraries(${NCUB_TEST_test_device_run_length_encode_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_device_run_length_encode_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_device_scan
################################################################
if(NCUB_TEST_test_device_scan)
    project(${NCUB_TEST_test_device_scan_NAME})
    add_executable(${NCUB_TEST_test_device_scan_NAME} test_device_scan.cu)
    target_link_libraries(${NCUB_TEST_test_device_scan_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_device_scan_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_device_select_if
################################################################
if(NCUB_TEST_test_device_select_if)
    project(${NCUB_TEST_test_device_select_if_NAME})
    add_executable(${NCUB_TEST_test_device_select_if_NAME} test_device_select_if.cu)
    target_link_libraries(${NCUB_TEST_test_device_select_if_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_device_select_if_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_device_select_unique
################################################################
if(NCUB_TEST_test_device_select_unique)
    project(${NCUB_TEST_test_device_select_unique_NAME})
    add_executable(${NCUB_TEST_test_device_select_unique_NAME} test_device_select_unique.cu)
    target_link_libraries(${NCUB_TEST_test_device_select_unique_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_device_select_unique_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_grid_barrier
################################################################
if(NCUB_TEST_test_grid_barrier)
    project(${NCUB_TEST_test_grid_barrier_NAME})
    add_executable(${NCUB_TEST_test_grid_barrier_NAME} test_grid_barrier.cu)
    target_link_libraries(${NCUB_TEST_test_grid_barrier_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_grid_barrier_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_iterator
################################################################
if(NCUB_TEST_test_iterator)
    project(${NCUB_TEST_test_iterator_NAME})
    add_executable(${NCUB_TEST_test_iterator_NAME} test_iterator.cu)
    target_link_libraries(${NCUB_TEST_test_iterator_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_iterator_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_warp_reduce
################################################################
if(NCUB_TEST_test_warp_reduce)
    project(${NCUB_TEST_test_warp_reduce_NAME})
    add_executable(${NCUB_TEST_test_warp_reduce_NAME} test_warp_reduce.cu)
    target_link_libraries(${NCUB_TEST_test_warp_reduce_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_warp_reduce_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# test_warp_scan
################################################################
if(NCUB_TEST_test_warp_scan)
    project(${NCUB_TEST_test_warp_scan_NAME})
    add_executable(${NCUB_TEST_test_warp_scan_NAME} test_warp_scan.cu)
    target_link_libraries(${NCUB_TEST_test_warp_scan_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TEST_test_warp_scan_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()