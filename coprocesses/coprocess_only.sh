#!/bin/bash

# Function to demonstrate coprocess
coproc_example() {
    while true; do
        read input  # Read input from coprocess input (file descriptor 1)
        if [[ $input == "exit" ]]; then
            echo "Coprocess exiting..."
            break
        fi
        echo "Coprocess received: $input"  # Send output back to main script (file descriptor 0)
    done
}

# Start the coprocess and assign file descriptors to my_coproc array
# When you create a coprocess, the file descriptors are used to interact with it.
# A file descriptor (FD) is an integer that uniquely identifies an open file
# or a communication channel (like a pipe or a socket) in a process
coproc my_coproc { coproc_example; }

# 0 -> coprocess output (used to read from the coprocess)
# 1 -> coprocess input (used to write to the coprocess)

# Send a message to the coprocess using my_coproc[1] (write to coprocess input)
# The & in >& (or >&N) is used to indicate that the redirection should target a file descriptor, not a file.
echo "Hello from the main script!" >&"${my_coproc[1]}"

# Read response from the coprocess using my_coproc[0] (read from coprocess output)
read -u "${my_coproc[0]}" response
echo "Main script received: $response"

# Interact with the coprocess
echo "Sending commands to the coprocess (type 'exit' to stop):"
while true; do
    # Read input from the user
    read -p "Enter command: " user_input
    # Send the input to the coprocess
    echo "$user_input" >&"${my_coproc[1]}"

    # Read coprocess response
    read -u "${my_coproc[0]}" coproc_response
    echo "Coprocess says: $coproc_response"

    # If user types 'exit', break the loop and stop interaction
    [[ "$user_input" == "exit" ]] && break
done

# Clean up
echo "Coprocess interaction finished."
