#!/bin/bash

# Function to convert Celsius to Fahrenheit
celsius_to_fahrenheit() {
    local celsius=$1
    local fahrenheit=$(echo "scale=2; ($celsius * 9/5) + 32" | bc)
    echo "Temperature in Fahrenheit: $fahrenheit°F"
}

# Main script starts here
echo "Enter temperature in Celsius:"
read celsius

celsius_to_fahrenheit $celsius
