echo -n "Enter a number: "
read n

reversed=0
while [ $n -gt 0 ]; do
    digit=$((n % 10))
    reversed=$((reversed * 10 + digit))
    n=$((n / 10))
done
echo "Reversed number: $reversed"

echo -n "Enter a string: "
read user_string

reversed_string=""
for ((i = ${#user_string} - 1; i >= 0; i--)); do
    reversed_string="${reversed_string}${user_string:$i:1}"
done
echo "Reversed string: $reversed_string"
