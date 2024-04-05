#!/bin/bash

# Function to list all files
list_files() {
    ls
}

# Function to display current working directory
current_directory() {
    pwd
}

# Function to display calendar
display_calendar() {
    cal
}

# Function to open vi editor
open_vi_editor() {
    vi
}

# Function to display today's date
display_date() {
    date
}

# Function to display current user
current_user() {
    whoami
}

# Main script starts here
while true; do
    echo "Menu:"
    echo "a) List all files"
    echo "b) Current working directory"
    echo "c) Calendar"
    echo "d) Open vi editor"
    echo "e) Today's date"
    echo "f) Current user"
    echo "x) Exit"

    read -p "Enter your choice: " choice

    case $choice in
        a)  list_files ;;
        b)  current_directory ;;
        c)  display_calendar ;;
        d)  open_vi_editor ;;
        e)  display_date ;;
        f)  current_user ;;
        x)  echo "Exiting program..."
            break ;;
        *)  echo "Invalid choice!" ;;
    esac

    echo ""  # Print a new line for readability
done
