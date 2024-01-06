cmake_minimum_required(VERSION 3.0)
project(main_app Fortran)

# libgreetのパスを指定する必要があるかもしれません
add_executable(main main.f90)

find_library(GREET_LIB greet PATHS /usr/local/lib)
if(NOT GREET_LIB)
    message(FATAL_ERROR "greet library not found")
endif()

target_include_directories(main PUBLIC /usr/local/include)

target_link_libraries(main ${GREET_LIB})

install(TARGETS main DESTINATION bin)
