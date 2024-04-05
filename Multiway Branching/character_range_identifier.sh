#!/bin/bash

# Function to identify the range of characters
identify_character_range() {
    local char=$1
    local ascii_value=$(printf "%d" "'$char'")

    case $ascii_value in
        48[0-9])  echo "Digit: $char" ;;
        65[[:upper:]])  echo "Uppercase Letter: $char" ;;
        97[[:lower:]])  echo "Lowercase Letter: $char" ;;
        32|33|34|39|44|46|58|59|63)  echo "Special Symbol: $char" ;;
        *)  echo "Unknown Character: $char" ;;
    esac
}

# Main script starts here
echo "Press any key (or Ctrl+C to exit):"

while IFS= read -rs -n1 char; do
    identify_character_range "$char"
done
