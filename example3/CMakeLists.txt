cmake_minimum_required(VERSION 3.20)

project(test LANGUAGES Fortran)

add_subdirectory(globals)
add_subdirectory(linear_algebra)
add_subdirectory(geometry)
add_subdirectory(p1galerkin)

add_executable(main main.f90)
target_link_libraries(main PRIVATE globals linalg geometry p1galerkin)
