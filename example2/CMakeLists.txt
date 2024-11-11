cmake_minimum_required(VERSION 3.20)

project(test LANGUAGES Fortran)

include(FetchContent)

FetchContent_Declare(
  globals
  GIT_REPOSITORY https://github.com/ncrescenzio/globals.git
  GIT_TAG        e66afb850261ce409bfaf28787d28d8295afd564
)
FetchContent_MakeAvailable(globals)

FetchContent_Declare(
  linear_algebra
  GIT_REPOSITORY https://github.com/ncrescenzio/linear_algebra.git
  GIT_TAG        d4c1436f644309b160ac52ab020401c7f7ed3280
)
FetchContent_MakeAvailable(linear_algebra)

add_executable(main main.f90)
target_link_libraries(main PRIVATE globals linalg)
