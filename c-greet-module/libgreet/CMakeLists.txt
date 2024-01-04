cmake_minimum_required(VERSION 3.10)
project(GreetLib VERSION 1.0 LANGUAGES C)

add_library(greet-lib SHARED src/greet-lib.c)
set_target_properties(greet-lib PROPERTIES
    PUBLIC_HEADER include/greet-lib.h
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
)

target_include_directories(greet-lib PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

install(TARGETS greet-lib
    LIBRARY DESTINATION lib
    PUBLIC_HEADER DESTINATION include
)
