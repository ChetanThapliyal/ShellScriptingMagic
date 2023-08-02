#!/bin/bash

# Define log directory
LOG_DIR="/path/to/log/directory"

# Find and remove files older than 7 days
find $LOG_DIR -type f -mtime +7 -exec rm {} \;
