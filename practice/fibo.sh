read -p "no of terms: " terms

a=-1
b=1

while [ $terms -gt 0 ]; do
	c=$(( a+b ))
	echo $c
	a=$b
	b=$c
	terms=$((terms-1))
done


