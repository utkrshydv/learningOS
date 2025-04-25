arr=(30 40 50 60 70)
echo "og array: ${arr[@]}"

sorted=($(echo "${arr[@]}"|tr ' ' '\n'| sort -n))
echo "sorted array: ${sorted[@]}"
