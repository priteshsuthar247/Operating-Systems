echo -n "Enter the value of n (number of elements): " 
read n
a=0
b=1

for ((i = 0; i < n; i++)); do
    echo -n "$a "
    next=$((a + b))
    a=$b
    b=$next
done
echo "";
