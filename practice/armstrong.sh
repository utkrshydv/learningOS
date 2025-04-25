#!/bin/bash


read -p "Enter a number: " num

ognum=$num
sum=0
n=${#num}  


while [ $num -gt 0 ]; do
    temp=$((num % 10))      
    sum=$((sum + temp**n))   
    num=$((num / 10))       
done
if [ $sum -eq $ognum ]; then
    echo "Armstrong number"
else
    echo "Not an Armstrong number"
fi

