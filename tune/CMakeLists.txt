################################################################
#
#	Tune
#
################################################################

include_directories(${PROJECT_SOURCE_DIR}/assets)

################################################################
# link
################################################################
if(NCUB_TUNE_tune_device_reduce)
    project(${NCUB_TUNE_tune_device_reduce_NAME})
    add_executable(${NCUB_TUNE_tune_device_reduce_NAME} tune_device_reduce.cu)
    target_link_libraries(${NCUB_TUNE_tune_device_reduce_NAME} ${NCUB_NAME})
    target_include_directories(${NCUB_TUNE_tune_device_reduce_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/include)
endif()