

echo "base: "
read base
echo "height: "
read height

area=$(echo 	"scale=2; 0.5*$base*$height" |bc)
echo "Area of the right angled triangle is: $area"
