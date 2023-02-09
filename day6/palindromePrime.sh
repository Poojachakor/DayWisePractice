function is_prime() {
    local num=$1
    if [ $num -lt 2 ]; then
        return 1
    fi
    for (( i=2; i<=$((num/2)); i++ )); do
        if [ $((num%i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0
}

function get_palindrome() {
    local num=$1
    echo "$num" | rev
}

read -p "Enter a number: " number
if is_prime $number; then
    echo "$number is not a prime number."
else
    echo "$number is a prime number."
    palindrome=$(get_palindrome $number)
    if is_prime $palindrome; then
        echo "$palindrome is also a prime number."
    else
        echo "$palindrome is not a prime number."
    fi
fi

