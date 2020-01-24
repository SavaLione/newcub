################################################################
#
#	Параметры сборки
#
################################################################

message(STATUS ${NCUB_DESCRIPTION_CONNECT_BUILD})

# Вывод результатов компиляции проекта NG в папки lib и bin
#if(NCUB_CONSTANTS_SUB_NMGPU)
#    set_target_properties(${NCUB_NAME}
#        PROPERTIES
#        ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
#        LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
#        RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
#    )
#endif()