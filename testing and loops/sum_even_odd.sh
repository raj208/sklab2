#!/bin/bash

# Function to find the sum of even and odd numbers in an array
sum_even_odd() {
    local array=("$@")
    local sum_even=0
    local sum_odd=0

    for num in "${array[@]}"; do
        if [ $((num % 2)) -eq 0 ]; then
            ((sum_even += num))
        else
            ((sum_odd += num))
        fi
    done

    echo "Sum of even numbers: $sum_even"
    echo "Sum of odd numbers: $sum_odd"
}

# Main script starts here
read -p "Enter the number of elements in the array: " n

echo "Enter $n elements of the array:"
for (( i=0; i<n; i++ )); do
    read array[$i]
done

sum_even_odd "${array[@]}"
