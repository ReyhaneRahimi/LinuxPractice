#!/bin/bash

largest=0
smallest=0

echo "Please enter 5 numbers:"

for (( i=1; i<=5; i++ ))
do
    read -p "Number $i: " number

    if [ $i -eq 1 ]; then
        largest=$number
        smallest=$number
    fi

    if (( number > largest )); then
        largest=$number
    fi

    if (( number < smallest )); then
        smallest=$number
    fi
done

echo "The largest number is: $largest"
echo "The smallest number is: $smallest"


