read -p "Enter days: " days

weeks=$((days/7))
remday=$((days%7))

echo "$days days = $weeks weeks and $remday days"

