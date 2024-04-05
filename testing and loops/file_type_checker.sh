#!/bin/bash

# Check if argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 1
fi

# Check if argument is a directory
if [ -d "$1" ]; then
    echo "$1 is a directory."
# Check if argument is a file
elif [ -f "$1" ]; then
    echo "$1 is a regular file."
# If argument is neither a directory nor a file
else
    echo "$1 is neither a directory nor a file."
fi
