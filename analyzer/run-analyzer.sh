#!/bin/sh

rm -rf analysis_result
rm -rf static_analysis

mkdir static_analysis
cd static_analysis

../scan-build cmake -DCMAKE_BUILD_TYPE=Debug ../..

../scan-build -plist-html -o ../analysis_result --use-cc /usr/lib/llvm-7/bin/clang --use-c++ /usr/lib/llvm-7/bin/clang --use-analyzer /usr/lib/llvm-7/libexec/c++-analyzer make

echo 'scan-build after process start'
#reduce html size 
cd ../analysis_result
echo "current dir is : $PWD" 
find . -name "report-*.html" -exec sed -i '/class=\"codeline\"/d' {} + 
find . -name "report-*.html" -exec sed -i '/class=\"num\"/d' {} +
echo 'scan-build after process ends'
