#!/bin/sh

rm -rf analysis_result
rm -rf static_analysis

mkdir static_analysis
cd static_analysis

../scan-build cmake -DCMAKE_BUILD_TYPE=Debug ../..

../scan-build -o ../analysis_result --use-cc /usr/lib/llvm-7/bin/clang --use-c++ /usr/lib/llvm-7/bin/clang --use-analyzer /usr/lib/llvm-7/libexec/c++-analyzer make
