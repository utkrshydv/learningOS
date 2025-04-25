a1=(1 2 3 4 5 6)
a2=(7 8 9 10 11)

union=($(echo "${a1[@]} ${a2[@]}" | tr ' ' '\n' | sort -u))

echo "${union[@]}"
