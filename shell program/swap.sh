#!/bin/bash

# Function to swap two values
swap_values() {
    local temp=$1
    val1=$2
    val2=$3
    eval "$temp=\$val1"
    eval "$2=\$val2"
    eval "$3=\$temp"
}

# Main script starts here
echo "Enter the first value:"
read val1
echo "Enter the second value:"
read val2

echo "Before swapping: Value 1 = $val1, Value 2 = $val2"

temp="temp_swap_variable"
swap_values $temp $val1 $val2

echo "After swapping: Value 1 = $val1, Value 2 = $val2"
