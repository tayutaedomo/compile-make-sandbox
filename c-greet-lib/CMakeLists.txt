cmake_minimum_required(VERSION 3.10)
project(GreetLibrary VERSION 1.0 LANGUAGES C)

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

if(BUILD_SHARED_LIBS)
    add_library(greet-lib SHARED greet-lib.c)
    set_target_properties(greet-lib PROPERTIES
        PUBLIC_HEADER greet-lib.h
        VERSION ${PROJECT_VERSION}
        SOVERSION 1
        OUTPUT_NAME "greet-lib"
    )
else()
    add_library(greet-lib STATIC greet-lib.c)
    set_target_properties(greet-lib PROPERTIES
        ARCHIVE_OUTPUT_NAME "greet-lib_static"
    )
endif()

install(TARGETS greet-lib 
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    PUBLIC_HEADER DESTINATION include
)

add_executable(main main.c)
target_link_libraries(main PRIVATE greet-lib)


# Uninstall target
add_custom_target(uninstall
    COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_SOURCE_DIR}/cmake_uninstall.cmake
)
