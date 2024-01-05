cmake_minimum_required(VERSION 3.10)
project(MainApp VERSION 1.0 LANGUAGES C)

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

set(GREET_LIB_PATH "/usr/local" CACHE PATH "Path to greet library")
set(ENV{PKG_CONFIG_PATH} "${GREET_LIB_PATH}/lib/pkgconfig")

# pkg-config
find_package(PkgConfig REQUIRED)
pkg_check_modules(GREET_LIB REQUIRED greet-lib)

add_executable(main src/main.c)

target_include_directories(main PRIVATE ${GREET_LIB_INCLUDE_DIRS})
target_link_directories(main PRIVATE ${GREET_LIB_LIBRARY_DIRS})

if(BUILD_SHARED_LIBS)
    target_link_libraries(main PRIVATE ${GREET_LIB_LIBRARIES})
else()
    target_link_libraries(main PRIVATE "${GREET_LIB_LIBRARY_DIRS}/libgreet-lib.a")
endif()

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
