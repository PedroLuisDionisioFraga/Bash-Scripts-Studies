#!/bin/bash

# The (( expression ))
# Used to arithmetic expresion

# Function to calculate factorial
factorial() {
    local num=$1
    local result=1

    for ((i = 2; i <= num; i++)); do
        result=$((result * i))
    done

    echo $result
}

# Get user input
read -p "Enter a positive integer: " number

# Calculate and display factorial
if (( number < 0 )); then
    echo "Factorial is not defined for negative numbers."
else
    echo "Factorial of $number is $(factorial $number)."
fi


# The [[ expression ]]
# Return a status of 0 or 1 depending on the evaluation of the conditional expression expression

# Get user input for a filename
read -p "Enter the filename to check: " filename

# Check if the file exists and its type
if [[ -e $filename ]]; then
    if [[ -f $filename ]]; then
        echo "$filename is a regular file."
    elif [[ -d $filename ]]; then
        echo "$filename is a directory."
    else
        echo "$filename is not a regular file or directory."
    fi
else
    echo "$filename does not exist."
fi
