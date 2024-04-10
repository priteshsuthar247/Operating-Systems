echo -n "Enter three numbers: "
read num1 num2 num3

if [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ]; then
    smallest=$num1
elif [ $num2 -lt $num1 ] && [ $num2 -lt $num3 ]; then
    smallest=$num2
else
    smallest=$num3
fi

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]; then
    largest=$num1
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]; then
    largest=$num2
else
    largest=$num3
fi

echo "Smallest number: $smallest"
echo "Largest number: $largest"
