#!/bin/bash

# Function to present the multiple-choice question
present_question() {
    echo "What is the capital of France?"
    echo "a) Paris"
    echo "b) London"
    echo "c) Berlin"
    echo "d) Rome"
}

# Main script starts here
present_question
read -p "Enter your answer (a/b/c/d): " answer

case $answer in
    a)  echo "Your answer is correct!" ;;
    b|c|d)  echo "Your answer is wrong!" ;;
    *)  echo "Invalid choice! Please choose a, b, c, or d." ;;
esac
