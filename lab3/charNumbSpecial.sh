#!/bin/bash

echo "Enter a value"
read char

case $char in
	[a-zA-Z])
		echo "$char is an alphabet";;
	[0-9])
		echo "$char is a digit";;
	*)
		echo "$char is a special character.";;
esac

