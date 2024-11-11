#!/bin/bash

# Compile using build dir
cmake -S . -B build -Dglobals_DIR:PATH=../globals/build/ -Dlinalg_DIR:PATH=../linear_algebra/build/
cmake --build build

# Compile using install dir
cmake -S . -B build -Dglobals_ROOT:PATH=../libglobals/ -Dlinalg_ROOT:PATH=../liblinalg/
cmake --build build
