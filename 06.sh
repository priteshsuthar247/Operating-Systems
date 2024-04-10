echo -n "Enter a number: "
read num

if [ $num -le 1 ]; then
    echo "$num is not a prime number"
elif [ $num -gt 1 ]; then
    is_prime=true
    for ((i = 2; i < num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            echo "$num is not a prime number"
            is_prime=false
            break
        fi
    done
    if [ $is_prime == true ]; then
        echo "$num is a prime number"
    fi
fi
