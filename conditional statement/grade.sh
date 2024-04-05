#!/bin/bash

# Function to determine the grade based on percentage
determine_grade() {
    local percentage=$1
    if (( $(echo "$percentage >= 90" | bc -l) )); then
        echo "Grade: A"
    elif (( $(echo "$percentage >= 80" | bc -l) )); then
        echo "Grade: B"
    elif (( $(echo "$percentage >= 70" | bc -l) )); then
        echo "Grade: C"
    elif (( $(echo "$percentage >= 60" | bc -l) )); then
        echo "Grade: D"
    else
        echo "Grade: F"
    fi
}

# Main script starts here
echo "Enter the total marks:"
read total_marks

echo "Enter the marks obtained:"
read marks_obtained

percentage=$(echo "scale=2; ($marks_obtained / $total_marks) * 100" | bc -l)

echo "Percentage obtained: $percentage%"

determine_grade $percentage
