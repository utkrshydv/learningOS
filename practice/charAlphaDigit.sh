#!/bin/bash

read -p "Enter a character: " char

case $char in
	[a-zA-Z]) echo "alphabet";;
	[0-9]) echo "digit";;
	*) echo "special character";;
esac
