arr=(10 20 30 40 50 60)

for((i="${#arr[@]}-1"; i>=0; i--)); do
	rev+="${arr[$i]} "
done

echo "${arr[@]}"
echo "${rev[@]}"

