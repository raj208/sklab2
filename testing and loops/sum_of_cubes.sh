#!/bin/bash

# Function to find the sum of cubes
sum_of_cubes() {
    local N=$1
    local sum=0

    for (( i=1; i<=N; i++ )); do
        sum=$((sum + i * i * i))
    done

    echo "Sum of cubes from 1 to $N is: $sum"
}

# Main script starts here
read -p "Enter the value of N: " N

# Check if N is a positive integer
if [[ $N =~ ^[1-9][0-9]*$ ]]; then
    sum_of_cubes $N
else
    echo "Error: Please enter a positive integer."
fi
