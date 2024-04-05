#!/bin/bash

# Function to execute UNIX commands
execute_command() {
    case $1 in
        "1")  date ;;
        "2")  cal ;;
        "3")  ls ;;
        "4")  pwd ;;
        "5")  who ;;
        *)    echo "Invalid choice!" ;;
    esac
}

# Main script starts here
echo "Choose a UNIX command to execute:"
echo "1. Show current date and time"
echo "2. Show calendar"
echo "3. List files in current directory"
echo "4. Show current directory"
echo "5. Show who is logged in"

read -p "Enter your choice (1/2/3/4/5): " choice

execute_command $choice
