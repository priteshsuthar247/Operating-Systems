echo -n "Enter a number: "
read num

original=$num
reversed=0

while [ $num -gt 0 ]; do
    digit=$((num % 10))
    reversed=$((reversed * 10 + digit))
    num=$((num / 10))
done

if [ $original -eq $reversed ]; then
    echo "Number is a palindrome"
else
    echo "Number is NOT a palindrome"
fi
