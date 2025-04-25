#!/bin/bash

echo "Enter distance in meters: "
read meters

km=$(echo "scale=5; $meters/1000" |bc)
echo "Distance in km: $km km"

