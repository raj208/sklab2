#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3

    local simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "Simple Interest: $simple_interest"
}

# Function to calculate compound interest
calculate_compound_interest() {
    local principal=$1
    local rate=$2
    local time=$3

    local compound_interest=$(echo "scale=2; $principal * (1 + ($rate / 100))^$time - $principal" | bc -l)
    echo "Compound Interest: $compound_interest"
}

# Main script starts here
echo "Enter principal amount:"
read principal
echo "Enter rate of interest (in percentage):"
read rate
echo "Enter time period (in years):"
read time

calculate_simple_interest $principal $rate $time
calculate_compound_interest $principal $rate $time
