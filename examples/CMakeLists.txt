################################################################
#
#	Examples
#
################################################################

include_directories(${CMAKE_SOURCE_DIR}/assets)

# block

################################################################
# example_block_radix_sort
################################################################
if(NCUB_EXAMPLES_example_block_radix_sort)
    project(${NCUB_EXAMPLES_example_block_radix_sort_NAME})
    add_executable(${NCUB_EXAMPLES_example_block_radix_sort_NAME} block/example_block_radix_sort.cu)
    target_link_libraries(${NCUB_EXAMPLES_example_block_radix_sort_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_example_block_radix_sort_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# example_block_reduce
################################################################
if(NCUB_EXAMPLES_example_block_reduce)
    project(${NCUB_EXAMPLES_example_block_reduce_NAME})
    add_executable(${NCUB_EXAMPLES_example_block_reduce_NAME} block/example_block_reduce.cu)
    target_link_libraries(${NCUB_EXAMPLES_example_block_reduce_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_example_block_reduce_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# example_block_scan
################################################################
if(NCUB_EXAMPLES_example_block_scan)
    project(${NCUB_EXAMPLES_example_block_scan_NAME})
    add_executable(${NCUB_EXAMPLES_example_block_scan_NAME} block/example_block_scan.cu)
    target_link_libraries(${NCUB_EXAMPLES_example_block_scan_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_example_block_scan_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

# device

################################################################
# example_device_partition_flagged
################################################################
if(NCUB_EXAMPLES_example_device_partition_flagged)
    project(${NCUB_EXAMPLES_example_device_partition_flagged_NAME})
    add_executable(${NCUB_EXAMPLES_example_device_partition_flagged_NAME} device/example_device_partition_flagged.cu)
    target_link_libraries(${NCUB_EXAMPLES_example_device_partition_flagged_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_example_device_partition_flagged_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# example_device_partition_if
################################################################
if(NCUB_EXAMPLES_example_device_partition_if)
    project(${NCUB_EXAMPLES_example_device_partition_if_NAME})
    add_executable(${NCUB_EXAMPLES_example_device_partition_if_NAME} device/example_device_partition_if.cu)
    target_link_libraries(${NCUB_EXAMPLES_example_device_partition_if_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_example_device_partition_if_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# example_device_radix_sort
################################################################
if(NCUB_EXAMPLES_example_device_radix_sort)
    project(${NCUB_EXAMPLES_example_device_radix_sort_NAME})
    add_executable(${NCUB_EXAMPLES_example_device_radix_sort_NAME} device/example_device_radix_sort.cu)
    target_link_libraries(${NCUB_EXAMPLES_example_device_radix_sort_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_example_device_radix_sort_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# example_device_reduce
################################################################
if(NCUB_EXAMPLES_example_device_reduce)
    project(${NCUB_EXAMPLES_example_device_reduce_NAME})
    add_executable(${NCUB_EXAMPLES_example_device_reduce_NAME} device/example_device_reduce.cu)
    target_link_libraries(${NCUB_EXAMPLES_example_device_reduce_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_example_device_reduce_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# example_device_scan
################################################################
if(NCUB_EXAMPLES_example_device_scan)
    project(${NCUB_EXAMPLES_example_device_scan_NAME})
    add_executable(${NCUB_EXAMPLES_example_device_scan_NAME} device/example_device_scan.cu)
    target_link_libraries(${NCUB_EXAMPLES_example_device_scan_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_example_device_scan_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# example_device_select_flagged
################################################################
if(NCUB_EXAMPLES_example_device_select_flagged)
    project(${NCUB_EXAMPLES_example_device_select_flagged_NAME})
    add_executable(${NCUB_EXAMPLES_example_device_select_flagged_NAME} device/example_device_select_flagged.cu)
    target_link_libraries(${NCUB_EXAMPLES_example_device_select_flagged_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_example_device_select_flagged_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# example_device_select_if
################################################################
if(NCUB_EXAMPLES_example_device_select_if)
    project(${NCUB_EXAMPLES_example_device_select_if_NAME})
    add_executable(${NCUB_EXAMPLES_example_device_select_if_NAME} device/example_device_select_if.cu)
    target_link_libraries(${NCUB_EXAMPLES_example_device_select_if_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_example_device_select_if_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# example_device_select_unique
################################################################
if(NCUB_EXAMPLES_example_device_select_unique)
    project(${NCUB_EXAMPLES_example_device_select_unique_NAME})
    add_executable(${NCUB_EXAMPLES_example_device_select_unique_NAME} device/example_device_select_unique.cu)
    target_link_libraries(${NCUB_EXAMPLES_example_device_select_unique_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_example_device_select_unique_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# example_device_sort_find_non_trivial_runs
################################################################
if(NCUB_EXAMPLES_example_device_sort_find_non_trivial_runs)
    project(${NCUB_EXAMPLES_example_device_sort_find_non_trivial_runs_NAME})
    add_executable(${NCUB_EXAMPLES_example_device_sort_find_non_trivial_runs_NAME} device/example_device_sort_find_non_trivial_runs.cu)
    target_link_libraries(${NCUB_EXAMPLES_example_device_sort_find_non_trivial_runs_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_EXAMPLES_example_device_sort_find_non_trivial_runs_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()