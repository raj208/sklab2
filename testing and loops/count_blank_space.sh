#!/bin/bash

# Function to count the number of blank spaces in a line of text
count_blank_spaces() {
    local line="$1"
    local count=$(grep -o ' ' <<< "$line" | wc -l)
    echo "Number of blank spaces in the line: $count"
}

# Main script starts here
read -p "Enter a line of text: " line

count_blank_spaces "$line"
