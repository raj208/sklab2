#!/bin/bash

# Get the current hour
hour=$(date +"%H")

# Determine the greeting based on the hour
if [ $hour -lt 12 ]; then
    if [ $hour -lt 5 ]; then
        greeting="Good night!"
    else
        greeting="Good morning!"
    fi
elif [ $hour -lt 18 ]; then
    greeting="Good afternoon!"
else
    greeting="Good evening!"
fi

# Display the greeting message
echo "It's currently $(date +"%T"). $greeting"
