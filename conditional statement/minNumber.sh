#!/bin/bash

# Function to find the minimum among four values
find_minimum() {
    local min=$1
    for num in "$@"; do
        if [ $num -lt $min ]; then
            min=$num
        fi
    done
    echo "Minimum value among the given numbers is: $min"
}

# Main script starts here
echo "Enter four numbers separated by space:"
read num1 num2 num3 num4

find_minimum $num1 $num2 $num3 $num4
