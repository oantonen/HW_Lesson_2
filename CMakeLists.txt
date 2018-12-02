cmake_minimum_required(VERSION 2.8)

project(is_alpha2)

set (SOURCE_EXE main.cpp)

set(SOURCE_LIB func.cpp)	

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -Wextra -Werror")

add_library(static_lib STATIC ${SOURCE_LIB})	

add_executable(main main.cpp)

target_link_libraries(main static_lib)

