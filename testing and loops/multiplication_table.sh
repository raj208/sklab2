#!/bin/bash

# Function to generate multiplication table
generate_multiplication_table() {
    local num=$1

    echo "Multiplication table for $num:"
    for (( i=1; i<=10; i++ )); do
        result=$((num * i))
        echo "$num x $i = $result"
    done
}

# Main script starts here
read -p "Enter a number: " number

generate_multiplication_table $number
