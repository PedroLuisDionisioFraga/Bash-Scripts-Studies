#!/bin/bash

# Using a for loop to iterate over a list
for item in apple banana cherry; do
    echo "Fruit: $item"
done
echo

# Using a for loop to iterate over a range
for i in {1..5}; do
    echo "Number: $i"
done
echo

# While
count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))  # Increment count
done
echo "Last count: $count"
echo

# until loop
count=1
until [ $count -gt 5 ]; do
    echo "Count: $count"
    ((count++))  # Increment count
done
echo "Last count: $count"
echo
