#!/bin/bash

echo "Maths: "
read maths

echo "Science: "
read science

echo "English: "
read english

average=$(( (maths + science + english)/3 ))
echo "Average is: " $average
