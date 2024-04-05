#!/bin/bash

# Function to determine if a number is positive, negative, or zero
check_number() {
    local num=$1
    if [ $num -gt 0 ]; then
        echo "$num is positive."
    elif [ $num -lt 0 ]; then
        echo "$num is negative."
    else
        echo "$num is zero."
    fi
}

# Main script starts here
echo "Enter a number:"
read number

check_number $number
