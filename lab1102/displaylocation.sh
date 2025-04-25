#!/bin/bash
echo "Enter array elements separated by space: "
read -a arr
echo "Enter element to search: "
read element

found=0
index=0

for num in "${arr[@]}"; do
  if [ "$num" -eq "$element" ]; then
    echo "Element found at index $index"
    found=1
  fi
  index=$((index + 1))
done

if [ $found -eq 0 ]; then
  echo "Element not found in array."
fi

