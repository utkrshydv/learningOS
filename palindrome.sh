#!/bin/bash

echo "Enter a number: "
read number

number1=$number 

reverse=0
while [ $number1 -gt 0 ]; do
    remainder=$((number1 % 10))  
    reverse=$((reverse * 10 + remainder))  
    number1=$((number1 / 10))  
done

if (( $reverse == $number ));then
	echo "Palindrome Number"
else
	echo "Not A Palindrome"
fi
