array=(10 20 30 40 50 60)
sum=0
for((i=0; i<${#array[@]}; i++)); do
   echo "${array[i]}"
done

