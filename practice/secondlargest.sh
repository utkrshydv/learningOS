echo "enter elements: "
read -a arr

echo "${arr[@]}"

largest=${arr[0]}
second_largest=" "

for num in "${arr[@]}"; do
	if (( num > largest )); then
	second_largest=$largest
	largest=$num
elif (( num> second_largest )) && (( num != largest )); then
	second_largest=$num
fi
done

echo "$second_largest"

