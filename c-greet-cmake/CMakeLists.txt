cmake_minimum_required(VERSION 3.10)

project(GreetProject VERSION 1.0 LANGUAGES C)

add_executable(main main.c greet.c)

set_target_properties(main PROPERTIES
    C_STANDARD 99
    C_STANDARD_REQUIRED TREU
)

install(TARGETS main DESTINATION bin)
