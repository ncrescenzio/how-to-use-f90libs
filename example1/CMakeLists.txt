cmake_minimum_required(VERSION 3.20)

project(test LANGUAGES Fortran)

find_package(globals REQUIRED)
find_package(linalg REQUIRED)
find_package(geometry REQUIRED)

add_executable(main main.f90)
target_link_libraries(main PRIVATE globals linalg geometry)
