#!/bin/bash
echo "Enter a 7-digit number: "
read num

length=${#num}
if [ "$length" -ne 7 ]; then
  echo "Please enter exactly a 7-digit number."
  exit 1
fi

reversed=0
temp=$num

while [ $temp -gt 0 ]; do
  digit=$((temp % 10))
  reversed=$((reversed * 10 + digit))
  temp=$((temp / 10))
done

i=0
while [ $reversed -gt 0 ]; do
  digit=$((reversed % 10))  
  if [ $((i % 2)) -eq 0 ]; then
    echo -n "$digit "
  fi
  reversed=$((reversed / 10))  
  i=$((i + 1))
done
echo ""

