cmake_minimum_required(VERSION 3.0)
project(fortran-greet-cmake Fortran)

add_compile_options(-Wall -Wextra -O2)

add_executable(main main.f90 greet.f90)

install(TARGETS main DESTINATION bin)


# Uninstall target
add_custom_target(uninstall
    COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_SOURCE_DIR}/cmake_uninstall.cmake
)
