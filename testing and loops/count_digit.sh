#!/bin/bash

# Function to count the number of digits in a number
count_digits() {
    local number=$1
    local count=${#number}
    echo "The number of digits in $number is: $count"
}

# Main script starts here
read -p "Enter a number: " number

# Check if the input is a valid number
if [[ $number =~ ^[0-9]+$ ]]; then
    count_digits $number
else
    echo "Error: Please enter a valid number."
fi
