#!/bin/bash

read -p "Enter number1: " num1
read -p "Enter number2: " num2
read -p "Enter number3: " num3


if (( num1 >= num2 && num1 >= num3 )); then
    largest=$num1
elif (( num2 >= num1 && num2 >= num3 )); then
    largest=$num2
else
    largest=$num3
fi

if (( num1 <= num2 && num1 <= num3 )); then
    smallest=$num1
elif (( num2 <= num1 && num2 <= num3 )); then
    smallest=$num2
else
    smallest=$num3
fi

echo "Largest number: $largest"
echo "Smallest number: $smallest"

