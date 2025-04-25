#!/bin/bash

echo "Radius: "
read radius
perimeter=$(echo "scale=2; 2*3.14*$radius" | bc)
area=$(echo "scale=2; 3.14*$radius*$radius" | bc)
echo "Area is: $area"
echo "Perimeter is: $perimeter"
