arr=(20 40 50 60 70 20)
num=0
for num in "${arr[@]}";  do
 sum=$((sum + num))
done
echo "${#arr[@]}"
echo "$sum"

