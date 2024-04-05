#!/bin/bash

# Function to compute rental charge for a car
compute_car_charge() {
    local distance=$1
    local rate_per_km=10
    local total_charge=$(echo "$distance * $rate_per_km" | bc)
    echo "Rental charge for traveling in a car: $total_charge"
}

# Function to compute rental charge for a van
compute_van_charge() {
    local distance=$1
    local rate_per_km=15
    local total_charge=$(echo "$distance * $rate_per_km" | bc)
    echo "Rental charge for traveling in a van: $total_charge"
}

# Function to compute rental charge for a jeep
compute_jeep_charge() {
    local distance=$1
    local rate_per_km=20
    local total_charge=$(echo "$distance * $rate_per_km" | bc)
    echo "Rental charge for traveling in a jeep: $total_charge"
}

# Function to compute rental charge for a bus
compute_bus_charge() {
    local distance=$1
    local rate_per_km=25
    local total_charge=$(echo "$distance * $rate_per_km" | bc)
    echo "Rental charge for traveling in a bus: $total_charge"
}

# Main script starts here
echo "Enter the distance traveled (in kilometers):"
read distance

compute_car_charge $distance
compute_van_charge $distance
compute_jeep_charge $distance
compute_bus_charge $distance
