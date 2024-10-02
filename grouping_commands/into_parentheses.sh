#!/bin/bash

# Forces the shell to create a subshell
(
    echo "This is executed in a subshell."
    cd /tmp
    echo "Current directory: $(pwd)"
)
echo "Comeback to main shell"
echo "Current directory in the main shell: $(pwd)"
