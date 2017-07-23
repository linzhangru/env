#!/bin/sh

echo "ctags ..."
ctags -R
echo "cscope ..."
find -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.cc'> cscope.files
cscope -bkq -i cscope.files
