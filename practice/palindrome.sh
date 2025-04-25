#!/bin/bash

echo "enter a number: "
read ognumber
number=$ognumber
reverse=0
while [ $number -gt 0 ]; do
	remainder=$((number%10))
	reverse=$((reverse*10+remainder))
	number=$((number/10))
done

if [ $reverse -eq $ognumber ]; then
	echo "palindrome"
else
	echo "not palindrome"
fi
