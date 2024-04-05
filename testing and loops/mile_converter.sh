#!/bin/bash

# Function to convert miles to feet
convert_to_feet() {
    local miles=$1
    local feet=$(echo "$miles * 5280" | bc)
    echo "$miles miles is equal to $feet feet."
}

# Function to convert miles to yards
convert_to_yards() {
    local miles=$1
    local yards=$(echo "$miles * 1760" | bc)
    echo "$miles miles is equal to $yards yards."
}

# Function to convert miles to rods
convert_to_rods() {
    local miles=$1
    local rods=$(echo "$miles * 320" | bc)
    echo "$miles miles is equal to $rods rods."
}

# Main script starts here
if [ $# -eq 0 ]; then
    echo "Usage: $0 <miles> [-y] [-r]"
    exit 1
fi

miles=$1
shift

while getopts ":yr" option; do
    case $option in
        y)  convert_to_yards $miles
            exit ;;
        r)  convert_to_rods $miles
            exit ;;
        \?) echo "Invalid option: -$OPTARG"
            exit ;;
    esac
done

convert_to_feet $miles
