#!/bin/bash

# Function to check if a number is even
is_even() {
    if [ $(( $1 % 2 )) -eq 0 ]; then
        return 0  # Even
    else
        return 1  # Odd
    fi
}

# Read four numbers from the user
echo "Enter four numbers, one at a time:"
read num1
read num2
read num3
read num4

# Calculate the sum of the numbers
sum=$((num1 + num2 + num3 + num4))

# Check if the sum is even or odd
is_even $sum

# Print the appropriate message based on the result
if [ $? -eq 0 ]; then
    echo "Hey it's Even"
else
    echo "Hey it's Odd"
fi
