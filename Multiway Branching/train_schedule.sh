#!/bin/bash

# Function to display list of trains
display_trains() {
    local source=$1
    local destination=$2

    case $source in
        "Delhi")
            case $destination in
                "Mumbai")    echo "1. Rajdhani Express"
                             echo "2. Duronto Express" ;;
                "Chennai")   echo "3. Grand Trunk Express"
                             echo "4. Tamil Nadu Express" ;;
                *)           echo "No direct trains available from $source to $destination" ;;
            esac
            ;;
        "Mumbai")
            case $destination in
                "Delhi")     echo "1. Rajdhani Express"
                             echo "2. Duronto Express" ;;
                "Chennai")   echo "3. Chennai Express"
                             echo "4. Deccan Queen" ;;
                *)           echo "No direct trains available from $source to $destination" ;;
            esac
            ;;
        "Chennai")
            case $destination in
                "Delhi")     echo "1. Grand Trunk Express"
                             echo "2. Tamil Nadu Express" ;;
                "Mumbai")    echo "1. Chennai Express"
                             echo "2. Deccan Queen" ;;
                *)           echo "No direct trains available from $source to $destination" ;;
            esac
            ;;
        *)
            echo "Source not found!" ;;
    esac
}

# Main script starts here
echo "Select source:"
echo "1. Delhi"
echo "2. Mumbai"
echo "3. Chennai"

read -p "Enter your choice (1/2/3): " source_choice

case $source_choice in
    1)  source="Delhi" ;;
    2)  source="Mumbai" ;;
    3)  source="Chennai" ;;
    *)  echo "Invalid choice!"
        exit ;;
esac

echo "Select destination:"
echo "1. Mumbai"
echo "2. Chennai"
echo "3. Delhi"

read -p "Enter your choice (1/2/3): " destination_choice

case $destination_choice in
    1)  destination="Mumbai" ;;
    2)  destination="Chennai" ;;
    3)  destination="Delhi" ;;
    *)  echo "Invalid choice!"
        exit ;;
esac

echo "Trains from $source to $destination:"
display_trains "$source" "$destination"
