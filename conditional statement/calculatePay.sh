#!/bin/bash

# Function to calculate employee pay
calculate_pay() {
    local basic_pay=$1
    local hra_percent=$2
    local da_percent=$3
    local tax_percent=$4

    # Calculate HRA, DA, and TAX
    local hra=$(echo "scale=2; ($hra_percent / 100) * $basic_pay" | bc)
    local da=$(echo "scale=2; ($da_percent / 100) * $basic_pay" | bc)
    local tax=$(echo "scale=2; ($tax_percent / 100) * $basic_pay" | bc)

    # Calculate total pay
    local total_pay=$(echo "scale=2; $basic_pay + $hra + $da - $tax" | bc)

    echo "Basic Pay: $basic_pay"
    echo "HRA: $hra"
    echo "DA: $da"
    echo "TAX: $tax"
    echo "Total Pay: $total_pay"
}

# Main script starts here
echo "Enter the basic pay:"
read basic_pay

echo "Enter the percentage of HRA:"
read hra_percent

echo "Enter the percentage of DA:"
read da_percent

echo "Enter the percentage of TAX:"
read tax_percent

calculate_pay $basic_pay $hra_percent $da_percent $tax_percent
