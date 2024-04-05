#!/bin/bash

# Main script starts here
echo "All combinations of 123:"

for i in 1 2 3; do
    for j in 1 2 3; do
        for k in 1 2 3; do
            echo "$i$j$k"
        done
    done
done
