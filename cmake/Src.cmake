################################################################
#
#	Source files
#
################################################################

message(STATUS ${NCUB_DESCRIPTION_CONNECT_SUB})

# Библиотека newmoderngpu
if(NCUB_LIBRARY)
	add_subdirectory(src/)
	message(STATUS "	New cub ok.")
endif()

################################################################
#	Tests and examples
################################################################

# Examples
if(NCUB_EXAMPLES)
	add_subdirectory(examples/)
	message(STATUS "	Examples ok.")
endif()

# Tests
if(NCUB_TEST)
	add_subdirectory(test/)
	message(STATUS "	Tests ok.")
endif()

# Tune
if(NCUB_TUNE)
	add_subdirectory(tune/)
	message(STATUS "	Tune ok.")
endif()