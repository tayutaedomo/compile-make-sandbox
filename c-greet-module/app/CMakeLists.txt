cmake_minimum_required(VERSION 3.10)
project(MainApp VERSION 1.0 LANGUAGES C)

set(GREET_LIB_PATH "/usr/local" CACHE PATH "Path to greet library")

add_executable(main src/main.c)

target_include_directories(main PRIVATE ${GREET_LIB_PATH}/include)
target_link_directories(main PRIVATE ${GREET_LIB_PATH}/lib)
target_link_libraries(main PRIVATE greet-lib)

install(TARGETS main DESTINATION bin)


# Uninstall target
if(NOT TARGET uninstall)
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake_uninstall.cmake.in"
    "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
    IMMEDIATE @ONLY)

add_custom_target(uninstall
    COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake)
endif()
