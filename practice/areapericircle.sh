read -p "enter radius: " r

area=$(echo "3.14*$r*$r" |bc)
perimeter=$(echo "2*3.14*$r" |bc)

echo $area
echo $perimeter

