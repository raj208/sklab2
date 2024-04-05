#!/bin/bash

# Function to convert Dollar to Rupees
convert_dollar_to_rupees() {
    local dollar=$1
    local rupees=$(echo "scale=2; $dollar * 74.48" | bc)
    echo "$dollar Dollar(s) is equal to $rupees Rupees"
}

# Function to convert Centimeters to Meters
convert_cm_to_meters() {
    local cm=$1
    local meters=$(echo "scale=2; $cm / 100" | bc)
    echo "$cm Centimeter(s) is equal to $meters Meter(s)"
}

# Function to convert Centigrade to Fahrenheit
convert_celsius_to_fahrenheit() {
    local celsius=$1
    local fahrenheit=$(echo "scale=2; ($celsius * 9/5) + 32" | bc)
    echo "$celsius Celsius is equal to $fahrenheit Fahrenheit"
}

# Main script starts here
echo "Choose a conversion:"
echo "a) Dollar to Rupees"
echo "b) Centimeters to Meters"
echo "c) Centigrade to Fahrenheit"

read -p "Enter your choice (a/b/c): " choice

case $choice in
    a)  read -p "Enter amount in Dollar: " dollar
        convert_dollar_to_rupees $dollar ;;
    b)  read -p "Enter length in Centimeters: " cm
        convert_cm_to_meters $cm ;;
    c)  read -p "Enter temperature in Celsius: " celsius
        convert_celsius_to_fahrenheit $celsius ;;
    *)  echo "Invalid choice!" ;;
esac
