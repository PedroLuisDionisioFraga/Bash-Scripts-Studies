#!/bin/bash

# Defining a variable
NAME="Pedro"
LAST_NAME="Fraga"
TODAY=$(date)

echo "To display a variable content use \$"

# Using single quotes, preserves the literal value of each character within the quotes
echo 'Using single quotes:'
echo -n 'Hello, $NAME '  # No new line in end
echo '$LAST_NAME'
echo -e 'Today is $TODAY\n'

# Using double quotes, preserves the literal value of all characters within the quotes, with the exception of ‘$’, ‘`’, ‘\’
echo "Using double quotes:"
echo -n "Hello, $NAME "  # No new line in end
echo "$LAST_NAME"
echo -e "Today is $TODAY\n"

# In macOS you can use "prinf"
printf "Hello, $NAME $LAST_NAME\nToday is $TODAY\n"
