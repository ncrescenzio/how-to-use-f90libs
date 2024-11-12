cmake_minimum_required(VERSION 3.20)

project(test LANGUAGES Fortran)

include(FetchContent)

FetchContent_Declare(
  globals
  GIT_REPOSITORY https://github.com/ncrescenzio/globals.git
  GIT_TAG        610988b86004b226225a0da5cd95bcc5f4efc202
)
FetchContent_MakeAvailable(globals)

FetchContent_Declare(
  linear_algebra
  GIT_REPOSITORY https://github.com/ncrescenzio/linear_algebra.git
  GIT_TAG        865b6674b49b0f953a2243a8820aad983b497474
)
FetchContent_MakeAvailable(linear_algebra)

FetchContent_Declare(
  geometry
  GIT_REPOSITORY https://github.com/ncrescenzio/geometry.git
  GIT_TAG        82c46e6d725c0209c512f5b353f9829dc7d67f83
)
FetchContent_MakeAvailable(geometry)

FetchContent_Declare(
  p1galerkin
  GIT_REPOSITORY https://github.com/ncrescenzio/p1galerkin.git
  GIT_TAG        15f5f8d591e60a0ff78c869b9b71d38b3003c325
)
FetchContent_MakeAvailable(p1galerkin)

add_executable(main main.f90)
target_link_libraries(main PRIVATE globals linalg geometry p1galerkin)
