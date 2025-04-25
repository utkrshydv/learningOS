arr=(10 20 30 40 50 60)
max=${arr[0]}

for num in "${arr[@]}"; do
 if [ $num -gt $max ]; then
     max=$num
 fi
done

echo "$max"
