#!/bin/bash

greet() {
    echo "Hello, $1!"
}

# Call the function
greet "Pedro"

echo

sum() {
    local result=$(( $1 + $2 ))
    echo $result
}

result=$(sum 3 5)

echo "Sum: $result"
