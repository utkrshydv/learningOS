read -p "enter number" num

product=1

while [ $num -gt 0 ]; do
	product=$((product*num))
	num=$((num-1))
done

echo "$product"
