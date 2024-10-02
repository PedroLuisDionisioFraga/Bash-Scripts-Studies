#!/bin/bash

num=10

# if-else
if [ $num -gt 5 ]; then
    echo "$num is greater than 5"
elif [ $num -eq 5 ]; then
    echo "$num is equal to 5"
else
    echo "$num is less than 5"
fi

# Switch
fruit="apple"
case $fruit in
    apple)
        echo "It's an apple."
        ;;
    banana)
        echo "It's a banana."
        ;;
    cherry)
        echo "It's a cherry."
        ;;
    *)
        echo "Unknown fruit."
        ;;
esac
