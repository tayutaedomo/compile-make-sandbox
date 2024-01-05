cmake_minimum_required(VERSION 3.10)
project(GreetLib VERSION 1.0 LANGUAGES C)

add_library(greet-lib-shared SHARED src/greet-lib.c)
add_library(greet-lib-static STATIC src/greet-lib.c)

target_include_directories(greet-lib-shared PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)
target_include_directories(greet-lib-static PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

set_target_properties(greet-lib-shared PROPERTIES
    OUTPUT_NAME "greet-lib"
    PUBLIC_HEADER include/greet-lib.h
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
)
set_target_properties(greet-lib-static PROPERTIES
    OUTPUT_NAME "greet-lib"
)

install(TARGETS greet-lib-shared greet-lib-static
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    PUBLIC_HEADER DESTINATION include
)


# pkg-config
set(PKG_CONFIG_FILE "${CMAKE_CURRENT_BINARY_DIR}/greet-lib.pc")
configure_file(${CMAKE_SOURCE_DIR}/greet-lib.pc.in ${PKG_CONFIG_FILE} @ONLY)
install(FILES ${PKG_CONFIG_FILE} DESTINATION lib/pkgconfig)


# Uninstall target
if(NOT TARGET uninstall)
    configure_file(
        "${CMAKE_CURRENT_SOURCE_DIR}/cmake_uninstall.cmake.in"
        "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
        IMMEDIATE @ONLY)

    add_custom_target(uninstall
        COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake)
endif()
