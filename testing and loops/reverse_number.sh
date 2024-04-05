#!/bin/bash

# Function to reverse a number
reverse_number() {
    local number=$1
    local reversed=""

    # Loop through each digit of the number in reverse order and append to reversed string
    while [ $number -gt 0 ]; do
        digit=$((number % 10))
        reversed="${reversed}${digit}"
        number=$((number / 10))
    done

    echo "The reversed number is: $reversed"
}

# Main script starts here
read -p "Enter a number: " number

# Check if the input is a valid number
if [[ $number =~ ^[0-9]+$ ]]; then
    reverse_number $number
else
    echo "Error: Please enter a valid number."
fi
