################################################################
#
#	Tune
#
################################################################

link_libraries(${NCUB_NAME})

include_directories(${PROJECT_SOURCE_DIR}/assets)
include_directories(${PROJECT_SOURCE_DIR}/include)

################################################################
# link
################################################################
if(NCUB_TUNE_tune_device_reduce)
    project(${NCUB_TUNE_tune_device_reduce_NAME})
    add_executable(${NCUB_TUNE_tune_device_reduce_NAME} tune_device_reduce.cu)
endif()