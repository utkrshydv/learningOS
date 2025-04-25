array=(10 20 30 40 50)
array[5]=60
array+=(70 80)
echo "${array[@]}"
echo "${#array[@]}"

unset array[@]
echo "${array[@]}"

