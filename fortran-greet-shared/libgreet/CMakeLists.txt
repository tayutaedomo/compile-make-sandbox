cmake_minimum_required(VERSION 3.0)
project(greet_lib Fortran)

add_library(greet SHARED greet.f90)

set_target_properties(greet PROPERTIES
                      Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/mod)

install(TARGETS greet LIBRARY DESTINATION lib)

# .mod file
install(DIRECTORY ${CMAKE_BINARY_DIR}/mod/ DESTINATION include)
