#!/bin/bash

# Function to convert integer into words
convert_to_words() {
    local num=$1
    case $num in
        0) echo -n "Zero" ;;
        1) echo -n "One" ;;
        2) echo -n "Two" ;;
        3) echo -n "Three" ;;
        4) echo -n "Four" ;;
        5) echo -n "Five" ;;
        6) echo -n "Six" ;;
        7) echo -n "Seven" ;;
        8) echo -n "Eight" ;;
        9) echo -n "Nine" ;;
        *) echo "Invalid input!" ;;
    esac
}

# Main script starts here
echo "Enter an integer:"
read number

echo -n "In words: "
while [ $number -gt 0 ]; do
    remainder=$((number % 10))
    convert_to_words $remainder
    number=$((number / 10))
    [ $number -gt 0 ] && echo -n " "
done

echo ""  # Print a new line at the end
