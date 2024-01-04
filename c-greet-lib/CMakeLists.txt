cmake_minimum_required(VERSION 3.10)
project(GreetLibrary VERSION 1.0 LANGUAGES C)

add_library(greet-lib SHARED greet-lib.c)

install(TARGETS greet-lib LIBRARY DESTINATION lib)
install(FILES greet-lib.h DESTINATION include)

add_executable(main main.c)

target_link_libraries(main PRIVATE greet-lib)


# Uninstall target
add_custom_target(uninstall
    COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_SOURCE_DIR}/cmake_uninstall.cmake
)
