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
  GIT_TAG        d671546285a5860530f9fd70c76fbc5463c04917
)
FetchContent_MakeAvailable(linear_algebra)

FetchContent_Declare(
  geometry
  GIT_REPOSITORY https://github.com/ncrescenzio/geometry.git
  GIT_TAG        8b5ab3d5916956c81382e7fa7efa7ee737b1bf16
)
FetchContent_MakeAvailable(geometry)

add_executable(main main.f90)
target_link_libraries(main PRIVATE globals linalg geometry)
