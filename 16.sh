echo -n "Enter the numbers in the array separated by space: "
read -a arr

sum=0

for num in "${arr[@]}"
do
    sum=$((sum + num))
done

echo "The sum of the array is $sum"
