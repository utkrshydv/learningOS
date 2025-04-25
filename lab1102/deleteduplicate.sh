#!/bin/bash
echo "Enter array elements separated by space: "
read -a arr

unique=()

for num in "${arr[@]}"; do
  exists=0
  for u in "${unique[@]}"; do
    if [ "$num" -eq "$u" ]; then
      exists=1
      break
    fi
  done
  if [ "$exists" -eq 0 ]; then
    unique+=("$num")
  fi
done

echo "Array after removing duplicates: ${unique[@]}"

