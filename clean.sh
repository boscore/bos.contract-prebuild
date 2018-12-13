#! /bin/bash

printf "=========== Prepare the release ===========\n"

if [ ! -e README.md ]; then
    printf "WARNING: please call this in bos.contract-prebuild/ \n"
    exit 1
fi

NEED_DEL_ITEMS=(
    "CMakeCache.txt"
    "CMakeFiles"
    "Makefile"
    "*.cmake"
    "tests"
    "*/CMakeFiles"
    "*/Makefile"
    "*/*.cmake"
)
for item in ${NEED_DEL_ITEMS[*]}
do 
    printf "cleaning $item\n"
    rm -rf $item
done

printf "=========== Done ===========\n"


