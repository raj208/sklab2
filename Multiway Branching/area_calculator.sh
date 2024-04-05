#!/bin/bash

# Function to calculate the area of a circle
calculate_circle_area() {
    local radius=$1
    local area=$(echo "scale=2; 3.14159 * $radius * $radius" | bc)
    echo "Area of the circle: $area"
}

# Function to calculate the area of a square
calculate_square_area() {
    local side=$1
    local area=$(echo "$side * $side" | bc)
    echo "Area of the square: $area"
}

# Function to calculate the area of a rectangle
calculate_rectangle_area() {
    local length=$1
    local breadth=$2
    local area=$(echo "$length * $breadth" | bc)
    echo "Area of the rectangle: $area"
}

# Function to calculate the area of a triangle
calculate_triangle_area() {
    local base=$1
    local height=$2
    local area=$(echo "scale=2; 0.5 * $base * $height" | bc)
    echo "Area of the triangle: $area"
}

# Main script starts here
echo "Choose a shape to calculate the area:"
echo "1. Circle"
echo "2. Square"
echo "3. Rectangle"
echo "4. Triangle"

read -p "Enter your choice (1/2/3/4): " choice

case $choice in
    1)  read -p "Enter the radius of the circle: " radius
        calculate_circle_area $radius ;;
    2)  read -p "Enter the side length of the square: " side
        calculate_square_area $side ;;
    3)  read -p "Enter the length of the rectangle: " length
        read -p "Enter the breadth of the rectangle: " breadth
        calculate_rectangle_area $length $breadth ;;
    4)  read -p "Enter the base length of the triangle: " base
        read -p "Enter the height of the triangle: " height
        calculate_triangle_area $base $height ;;
    *)  echo "Invalid choice!" ;;
esac
