#!/bin/bash

read -p "Enter three numbers: " a b c

if ((a>b && a>c)); then
	echo "$a greatest"
elif ((b>c && b>a)); then
	echo "$b greatest"
else
	echo "$c greatest"
fi 
