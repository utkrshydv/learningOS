arr=(10 20 30 40 50 60)
read -p "Enter a number: " num
found=0

for element in "${arr[@]}"; do
	if [ $element -eq $num ]; then
		found=1
		break
	fi
done

if [ $found -eq 1 ]; then
	echo "exists"
else
	echo "doesnot exist"
fi

