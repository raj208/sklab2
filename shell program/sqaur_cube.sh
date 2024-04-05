#!/bin/bash

# Function to calculate the square of a number
calculate_square() {
    local num=$1
    local square=$(echo "$num * $num" | bc)
    echo "Square of $num is: $square"
}

# Function to calculate the cube of a number
calculate_cube() {
    local num=$1
    local cube=$(echo "$num * $num * $num" | bc)
    echo "Cube of $num is: $cube"
}

# Main script starts here
echo "Enter a number:"
read number

calculate_square $number
calculate_cube $number
