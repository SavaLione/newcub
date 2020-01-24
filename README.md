Based on [cub](https://github.com/NVlabs/cub)

# Contact

Website:

Bug Tracker:

Wiki:

# Dependencies

* CMake
* Nvidia CUDA

* Visual Studio(Windows only) ``` Nvidia CUDA do not support MinGW ```
* GCC(Linux only)

# Compile and install
For Linux run:
```
$ mkdir build && cd build
$ cmake ..
$ make
```

For Windows run:
```
> md build
> cd build
> cmake ..
Open sln project
```

For existing cmake project:
* Download library or use gitmodules¹
* Add to CMakeLists.txt
```
add_subdirectory(${PROJECT_SOURCE_DIR}/lib/newcub)

target_link_libraries(YourProjectName newcub)
target_include_directories(YourProjectName PUBLIC "${CMAKE_SOURCE_DIR}/lib/newcub/include")
```

1. Example
```
[submodule "lib/newcub"]
	path = lib/newcub
	url = https://github.com/SavaLione/newcub.git
```

## Build options:
* ```NCUB_SHARED``` (default: ```OFF```): Build shared library
* ```NCUB_LIBRARY``` (default: ```ON```): Build newcub library
* ```NCUB_EXAMPLES``` (default: ```OFF```): Examples
* ```NCUB_TEST``` (default: ```OFF```): Test
* ```NCUB_TUNE``` (default: ```OFF```): Tune