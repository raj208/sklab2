#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local num=$1
    if [ $num -le 1 ]; then
        echo "$num is not a prime number."
        exit 0
    fi
    for (( i=2; i*i<=$num; i++ )); do
        if [ $((num % i)) -eq 0 ]; then
            echo "$num is not a prime number."
            exit 0
        fi
    done
    echo "$num is a prime number."
}

# Main script starts here
echo "Enter a number:"
read number

is_prime $number
