cmake_minimum_required(VERSION 3.0)
project(main_app Fortran)

add_executable(main main.f90)

target_link_libraries(main /usr/local/lib/libgreet.a)
target_include_directories(main PUBLIC /usr/local/include)

install(TARGETS main DESTINATION bin)
