#!/bin/bash

# Function to calculate the area of a triangle using Heron's formula
calculate_triangle_area() {
    local side1=$1
    local side2=$2
    local side3=$3

    # Semi-perimeter
    local s=$(echo "scale=10; ($side1 + $side2 + $side3) / 2" | bc)

    # Area using Heron's formula
    local area=$(echo "scale=10; sqrt($s * ($s - $side1) * ($s - $side2) * ($s - $side3))" | bc)

    echo "Area of the triangle: $area"
}

# Main script starts here
echo "Enter the length of first side of the triangle:"
read side1
echo "Enter the length of second side of the triangle:"
read side2
echo "Enter the length of third side of the triangle:"
read side3

calculate_triangle_area $side1 $side2 $side3
