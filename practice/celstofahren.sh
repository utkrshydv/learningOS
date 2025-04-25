read -p "enter celsius: " c
f=$(echo "scale=2; ($c*9/5)+32"|bc)
echo $f

