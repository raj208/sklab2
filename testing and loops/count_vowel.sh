#!/bin/bash

# Function to count the number of vowels in a string
count_vowels() {
    local string=$1
    local vowels="aeiouAEIOU"
    local count=0

    # Loop through each character in the string
    for (( i=0; i<${#string}; i++ )); do
        char="${string:$i:1}"

        # Check if the character is a vowel
        if [[ "$vowels" == *"$char"* ]]; then
            (( count++ ))
        fi
    done

    echo "The number of vowels in the string is: $count"
}

# Main script starts here
read -p "Enter a string: " input_string

count_vowels "$input_string"
