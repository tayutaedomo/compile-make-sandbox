cmake_minimum_required(VERSION 3.10)
project(MainApp VERSION 1.0 LANGUAGES C)

set(GREET_LIB_PATH "/usr/local" CACHE PATH "Path to greet library")

add_executable(main src/main.c)

target_include_directories(main PRIVATE ${GREET_LIB_PATH}/include)
target_link_directories(main PRIVATE ${GREET_LIB_PATH}/lib)
target_link_libraries(main PRIVATE greet-lib)
