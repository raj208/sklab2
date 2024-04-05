#!/bin/bash

# Generate a random number between 1 and 100
target=$(( (RANDOM % 100) + 1 ))

# Initialize variables
guesses=0
guess=0

echo "Welcome to the Number Guessing Game!"

# Main game loop
while true; do
    # Prompt the user to guess the number
    read -p "Guess the number (between 1 and 100): " guess

    # Increment the number of guesses
    (( guesses++ ))

    # Check if the guess is correct
    if [ $guess -eq $target ]; then
        echo "Congratulations! You guessed the correct number in $guesses guesses."
        break
    elif [ $guess -lt $target ]; then
        echo "Your guess is too low."
    else
        echo "Your guess is too high."
    fi
done
