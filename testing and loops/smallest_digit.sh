#!/bin/bash

# Function to find the smallest digit of a number
smallest_digit() {
    local number=$1
    local smallest=$(echo $number | grep -o . | sort | head -n1)
    echo "The smallest digit in $number is: $smallest"
}

# Main script starts here
read -p "Enter a number: " number

# Check if the input is a valid number
if [[ $number =~ ^[0-9]+$ ]]; then
    smallest_digit $number
else
    echo "Error: Please enter a valid number."
fi
