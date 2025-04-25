#!/bin/bash

echo a
read a

echo b
read b

echo "before swapping: a=$a, b=$b"
temp=$a
a=$b
b=$temp
echo "after swapping: a=$a, b=$b"

