#!/bin/bash

# Allows you to run a command in the background while also enabling
# two-way communication (stdin and stdout) between the shell and the coprocess.

background_process() {
    echo "Starting background process..."
    sleep 10  # Simulate a long-running task
    echo "Background process finished."
}

coproc_example() {
    echo "Starting coprocess..."
    while true; do
        echo "Coprocess is running: $(date)"
        sleep 1
    done
}

echo "=== Background Process ==="
background_process &  # Run the background process
BG_PID=$!  # Capture the PID of the background process

# Notify user
echo "Background process (PID: $BG_PID) is running. You can continue using the terminal."

# Give the user some time before checking on the background process
sleep 2

# Check if the background process is still running
if ps -p $BG_PID > /dev/null; then
    echo "Background process is still running."
else
    echo "Background process has completed."
fi

# Start coprocess
echo "=== Coprocess Example ==="
coproc my_coproc { coproc_example; }

# Read output from the coprocess
echo "Reading output from the coprocess (press Ctrl+C to stop)..."
trap 'kill "${my_coproc[1]}"' EXIT  # Ensure coprocess is killed on exit

# `my_coproc[0]` is the file descriptor used to read the output from the coprocess
while read -u "${my_coproc[0]}" line; do
    echo "Hello"
    echo "$line"  # Print each line output from the coprocess
done

# Clean up
wait $BG_PID  # Wait for the background process to finish

# Notify that the script has completed
echo "Script completed."
