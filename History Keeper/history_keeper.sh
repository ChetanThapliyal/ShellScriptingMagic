#!/bin/bash

# Set the path and filename for the history file
history_file="$HOME/.bash_history_keeper"

# Backup the current history to a temporary file
cp "$HOME/.bash_history" "$HOME/.bash_history_tmp"

# Check if the history file already exists
if [ -f "$history_file" ]; then
    # Append the new history entries to the existing file
    cat "$HOME/.bash_history_tmp" >> "$history_file"
else
    # Create a new history file and copy the current history to it
    cp "$HOME/.bash_history_tmp" "$history_file"
fi

# Remove the temporary history file
rm "$HOME/.bash_history_tmp"
