#!/bin/bash

# Using `read`
echo "Enter your name (default: Pedro):"
read name
name=${name:-Pedro}
echo "Hello, $name!"

# Display the prompt on the same line as the input
read -p "Enter your age (default: 20): " age
age=${age:-20}
echo "You are $age years old."

# Multiple vars.
echo "Enter your first and last name:"
read first_name last_name
echo "Hello, $first_name $last_name!"

# Hide input user
read -sp "Enter your password: " password
echo
echo "Your password has been entered: $password"
