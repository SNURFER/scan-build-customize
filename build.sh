#!/bin/bash

mkdir build
cd build
cmake -DCMAKE_BUILD_BUILD_TYPE=Debug ..
make
