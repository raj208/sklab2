#!/bin/bash

# Function to find factorial
factorial() {
    local num=$1
    local result=1

    if [ $num -eq 0 ]; then
        echo "Factorial of $num is 1."
        return
    fi

    for (( i=1; i<=$num; i++ )); do
        result=$((result * i))
    done

    echo "Factorial of $num is $result."
}

# Main script starts here
read -p "Enter a number: " number

factorial $number
