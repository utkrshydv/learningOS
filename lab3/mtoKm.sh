#!/bin/bash

echo "Enter distance in meters: "
read m 
km=$(echo "scale=5; $m/1000" | bc)
echo "Distance in km: $km km"
 
