#!/bin/bash

# Custom prompt for user input
PS3="Please select your favorite programming language (1-5): "

# Display a menu of programming languages
echo "Choose your favorite programming language:"
select lang in "Python" "JavaScript" "C++" "Go" "Quit"; do
    case $lang in
        "Python")
            echo "You selected Python."
            ;;
        "JavaScript")
            echo "You selected JavaScript."
            ;;
        "C++")
            echo "You selected C++."
            ;;
        "Go")
            echo "You selected Go."
            ;;
        "Quit")
            echo "Exiting the menu."
            break
            ;;
        *)  # If the user selects an invalid option
            echo "Invalid selection. Please try again."
            ;;
    esac
done
