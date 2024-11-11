cmake_minimum_required(VERSION 3.20)

project(test LANGUAGES Fortran)

find_package(globals)
if (globals_FOUND)
   message(STATUS "GLOBALS library FOUND")
else()
   message(FATAL_ERROR "GLOBALS library NOT FOUND")
endif()

find_package(linalg)
if (linalg_FOUND)
   message(STATUS "LINALG library FOUND")
else()
   message(FATAL_ERROR "LINALG library NOT FOUND")
endif()

add_executable(main main.f90)
target_link_libraries(main PRIVATE globals linalg)
