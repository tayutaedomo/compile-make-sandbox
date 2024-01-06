cmake_minimum_required(VERSION 3.0)
project(greet_lib Fortran)

add_library(greet STATIC greet.f90)

set_target_properties(greet PROPERTIES
                      Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/modules)

install(TARGETS greet ARCHIVE DESTINATION lib)
install(DIRECTORY ${CMAKE_BINARY_DIR}/modules/ DESTINATION include)
