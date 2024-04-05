#!/bin/bash

# Function to generate Fibonacci series
generate_fibonacci() {
    local n=$1

    # First two numbers of Fibonacci series
    a=0
    b=1

    echo "Fibonacci series up to $n terms:"

    # Print the first two numbers
    echo -n "$a $b "

    # Generate the rest of the series
    for ((i=3; i<=n; i++)); do
        # Calculate the next number in the series
        next=$((a + b))
        echo -n "$next "

        # Update values of a and b for next iteration
        a=$b
        b=$next
    done

    echo ""  # Print a new line at the end
}

# Main script starts here
read -p "Enter the number of terms in Fibonacci series: " terms

generate_fibonacci $terms
