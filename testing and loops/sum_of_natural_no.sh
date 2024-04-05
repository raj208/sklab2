#!/bin/bash

# Function to calculate the sum of n natural numbers
sum_of_natural_numbers() {
    local n=$1
    local sum=0

    # Calculate the sum of the first n natural numbers
    sum=$(( n * (n + 1) / 2 ))

    echo "The sum of the first $n natural numbers is: $sum"
}

# Main script starts here
read -p "Enter a positive integer n: " n

# Check if n is a positive integer
if [[ $n =~ ^[1-9][0-9]*$ ]]; then
    sum_of_natural_numbers $n
else
    echo "Error: Please enter a positive integer."
fi
