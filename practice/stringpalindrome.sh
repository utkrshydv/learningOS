read -p "Enter a strng: " str

rev_str=$(echo "$str"| rev)

if [ "$str" = "$rev_str" ]; then
	echo "palindrome"
else 
	echo "not a palindrome"
fi

