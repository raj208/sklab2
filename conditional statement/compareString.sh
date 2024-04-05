#!/bin/bash

# Function to compare strings
compare_strings() {
    local str1=$1
    local str2=$2

    if [ "$str1" == "$str2" ]; then
        echo "Strings are equal."
    else
        echo "Strings are not equal."
    fi
}

# Main script starts here
echo "Enter the first string:"
read string1

echo "Enter the second string:"
read string2

compare_strings "$string1" "$string2"
