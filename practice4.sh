#!/bin/bash

# Read a number from user input
read -p "Enter a number: " number

# Compare the number with 10 using -eq, -lt, and -gt
if [ "$number" -gt 10 ]; then
    echo "The number is larger than 10."
elif [ "$number" -eq 10 ]; then
    echo "The number is equal to 10."
else
    echo "The number is less than 10."
fi


