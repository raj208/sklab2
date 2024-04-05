#!/bin/bash

# Function to check if a number is Armstrong or not
is_armstrong() {
    local num=$1
    local num_digits=${#num}
    local sum=0

    for (( i=0; i<$num_digits; i++ )); do
        digit=${num:$i:1}
        sum=$(( sum + digit ** num_digits ))
    done

    if [ $sum -eq $num ]; then
        echo "$num is an Armstrong number."
    else
        echo "$num is not an Armstrong number."
    fi
}

# Main script starts here
read -p "Enter a number: " number

is_armstrong $number
