#!/bin/bash

# Function to check if a number is odd or even
check_odd_even() {
    local num=$1
    if [ $((num % 2)) -eq 0 ]; then
        echo "$num is even."
    else
        echo "$num is odd."
    fi
}

# Main script starts here
echo "Enter a number:"
read number

check_odd_even $number
