#!/bin/bash

# It allows execute them as a single unit
{
    echo "This is the first line."
    echo "This is the second line."
} > output.txt
echo "===== output.txt start ====="
cat output.txt
echo "===== output.txt end ====="

echo

# Different of parents, it run in same shell bit
{
    echo "This is executed in a subshell."
    cd /tmp
    echo "Current directory: $(pwd)"
}
echo "Comeback to main shell"
echo "Current directory in the main shell: $(pwd)"

echo

{
    VAR="Value"
    echo "Inside group: $VAR"
}
echo "Outside group: $VAR"

# Used in command substitution to group commands for processing
result=$( { echo "Hello"; echo "World"; } )
echo "$result"
