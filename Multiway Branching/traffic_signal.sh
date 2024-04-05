#!/bin/bash

# Function to display message based on traffic signal color
display_message() {
    local color=$1

    case $color in
        "red")      echo "Stop! Do not proceed." ;;
        "yellow")   echo "Slow down! Prepare to stop." ;;
        "green")    echo "Go! Proceed with caution." ;;
        *)          echo "Invalid color!" ;;
    esac
}

# Main script starts here
echo "Traffic Signal Colors:"
echo "1. Red"
echo "2. Yellow"
echo "3. Green"

read -p "Enter the traffic signal color (1/2/3): " choice

case $choice in
    1)  display_message "red" ;;
    2)  display_message "yellow" ;;
    3)  display_message "green" ;;
    *)  echo "Invalid choice!" ;;
esac
