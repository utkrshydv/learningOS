#!/bin/bash

echo "Enter a character: "
read char

case $char in
	[aeiouAEIOU]) echo "vowel";;
	[a-zA-Z]) echo "consonant";;
	*)echo "not alphabet";;
esac
