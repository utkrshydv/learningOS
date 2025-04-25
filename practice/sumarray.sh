array=(10 20 30 40 50)
sum=0
for num in "${array[@]}"; do
	sum=$((num + sum))
done
echo "$sum"

