arr=(10 20 10 30 40 50 30 10 20 10 60)
echo "og array: ${arr[@]}"

unique=($(echo "${arr[@]}" | tr ' ' '\n' | sort -u))
echo "removed: ${unique[@]}"

