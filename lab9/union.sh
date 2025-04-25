#!/bin/bash


array1=(1 2 3 4 5)
array2=(4 5 6 7 8)


union=($(echo "${array1[@]} ${array2[@]}" | tr ' ' '\n' | sort -u))

echo "Union of arrays: ${union[@]}"

