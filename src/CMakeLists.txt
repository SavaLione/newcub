################################################################
#
#   newcub library
#
################################################################
set(SRC
	${PROJECT_SOURCE_DIR}/src/newcub.h
	${PROJECT_SOURCE_DIR}/src/newcub.cpp
)


set(NCUB_SRC
    ${SRC}
)

################################################################
# Library assembly
################################################################

enable_language("CUDA")

if(NCUB_SHARED)
	add_library(${NCUB_NAME} SHARED ${NCUB_SRC})
else()
	add_library(${NCUB_NAME} STATIC ${NCUB_SRC})
endif()

target_include_directories(${NCUB_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/src)
target_include_directories(${NCUB_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/include)

set_target_properties(${NCUB_NAME} PROPERTIES LINKER_LANGUAGE CXX)