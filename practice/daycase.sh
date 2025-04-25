#!/bin/bash

read -p "enter a day: " day

case $day in
	1) echo "Sunday";;
	2) echo "Monday";;
  	*) echo "invalid";;
esac

