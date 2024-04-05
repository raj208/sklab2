#!/bin/bash

# Function to perform addition
add() {
    local result=$(echo "$1 + $2" | bc)
    echo "Result: $result"
}

# Function to perform subtraction
subtract() {
    local result=$(echo "$1 - $2" | bc)
    echo "Result: $result"
}

# Function to perform multiplication
multiply() {
    local result=$(echo "$1 * $2" | bc)
    echo "Result: $result"
}

# Function to perform division
divide() {
    local result=$(echo "scale=2; $1 / $2" | bc)
    echo "Result: $result"
}

# Main script starts here
echo "Welcome to the Simple Calculator!"
echo "Choose an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read -p "Enter your choice (1/2/3/4): " choice

case $choice in
    1)  read -p "Enter the first number: " num1
        read -p "Enter the second number: " num2
        add $num1 $num2 ;;
    2)  read -p "Enter the first number: " num1
        read -p "Enter the second number: " num2
        subtract $num1 $num2 ;;
    3)  read -p "Enter the first number: " num1
        read -p "Enter the second number: " num2
        multiply $num1 $num2 ;;
    4)  read -p "Enter the first number: " num1
        read -p "Enter the second number: " num2
        divide $num1 $num2 ;;
    *)  echo "Invalid choice!" ;;
esac
