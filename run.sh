#!/bin/bash
# Copyright 2022 AstroWYH
# =========================================================================
# To compile and run any file you modified:
# $ bash run.sh num
# eg. bash run.sh 01

set -e

num=$1

cd $(dirname $0)

if [[ ! -d build ]]; then
    echo "First run, please wait for building..."
    mkdir -p build
fi

pushd $(pwd)/build
cmake ..
make install
popd

pushd $(pwd)/${num}_*
./opencv_test_*
popd