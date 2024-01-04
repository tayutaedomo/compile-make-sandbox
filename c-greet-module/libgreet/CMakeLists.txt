cmake_minimum_required(VERSION 3.10)
project(GreetLib VERSION 1.0 LANGUAGES C)

add_library(greet-lib SHARED src/greet-lib.c)
add_library(greet-lib-static STATIC src/greet-lib.c)

set_target_properties(greet-lib PROPERTIES
    PUBLIC_HEADER include/greet-lib.h
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
)
set_target_properties(greet-lib-static PROPERTIES
    OUTPUT_NAME greet-lib
)

target_include_directories(greet-lib PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

install(TARGETS greet-lib greet-lib-static
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    PUBLIC_HEADER DESTINATION include
)


# Uninstall target
if(NOT TARGET uninstall)
    configure_file(
        "${CMAKE_CURRENT_SOURCE_DIR}/cmake_uninstall.cmake.in"
        "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
        IMMEDIATE @ONLY)

    add_custom_target(uninstall
        COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake)
endif()
