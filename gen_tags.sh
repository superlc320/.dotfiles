#!/bin/sh

find $(pwd) -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope.files
cscope -Rbkq -i cscope.files
ctags -R
