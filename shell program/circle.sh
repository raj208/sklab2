#!/bin/bash

# Function to calculate the area of a circle
calculate_area() {
    local radius=$1
    local pi=$(echo "scale=10; 4*a(1)" | bc -l) # Define pi
    local area=$(echo "scale=2; $pi * $radius * $radius" | bc -l)
    echo "Area of the circle: $area"
}

# Function to calculate the circumference of a circle
calculate_circumference() {
    local radius=$1
    local pi=$(echo "scale=10; 4*a(1)" | bc -l) # Define pi
    local circumference=$(echo "scale=2; 2 * $pi * $radius" | bc -l)
    echo "Circumference of the circle: $circumference"
}

# Main script starts here
echo "Enter the radius of the circle:"
read radius

calculate_area $radius
calculate_circumference $radius
