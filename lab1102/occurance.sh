#!/bin/bash
echo "Enter a number: "
read num
echo "Enter the digit to search: "
read digit
count=0

while [ "$num" -gt 0 ]; do
  rem=$((num % 10))  
  if [ "$rem" -eq "$digit" ]; then
    count=$((count + 1))  
  fi
  num=$((num / 10))  
done

echo "The digit $digit occurs $count times."

