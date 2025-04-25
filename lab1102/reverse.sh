#!/bin/bash
echo "Enter array elements separated by space: "
read -a arr

echo "Reversed array: "
for ((i=${#arr[@]}-1; i>=0; i--)); do
  echo -n "${arr[i]} "
done
echo ""

