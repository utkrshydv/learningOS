#!/bin/bash

echo "Enter array elements separated by space:"
read -a arr 

echo "Original array: ${arr[@]}"

unique=()  

for num in "${arr[@]}"; do
    [[ " ${unique[@]} " =~ " $num " ]] || unique+=("$num")
done

echo "Array without duplicates: ${unique[@]}"
