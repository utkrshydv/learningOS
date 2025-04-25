read -p "Enter a year: " year

if (( year%400 == 0 )); then
	echo "leap"
elif (( year%100 != 0 && year%4 == 0)); then
	echo "leap"
else
	echo "not leap"
fi

