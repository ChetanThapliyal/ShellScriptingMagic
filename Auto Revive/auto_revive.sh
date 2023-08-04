#!/bin/bash

# Function to check if the process is running
check_process() {
    local process_name="$1"
    if pgrep -x "$process_name" > /dev/null; then
        echo "Process $process_name is running."
        return 0
    else
        echo "Process $process_name is not running."
        return 1
    fi
}

# Function to restart the process
restart_process() {
    local process_name="$1"
    local max_attempts="$2"
    
    for ((attempt = 1; attempt <= max_attempts; attempt++)); do
        echo "Attempt $attempt to restart process $process_name..."
        # Add the command to start the process here, e.g., "command_to_start_process"
        # Replace the above line with the appropriate command to start the process.
        sleep 1 # Wait for a moment before checking if the process is running.
        if check_process "$process_name"; then
            echo "Process $process_name restarted successfully."
            return 0
        fi
    done
    
    echo "Unable to restart process $process_name after $max_attempts attempts."
    return 1
}

# Main script
if [ $# -ne 1 ]; then
    echo "Usage: $0 <process_name>"
    exit 1
fi

process_name="$1"
max_restart_attempts=3

if check_process "$process_name"; then
    echo "Process $process_name is already running."
else
    restart_process "$process_name" "$max_restart_attempts"
fi
