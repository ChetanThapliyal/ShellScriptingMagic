# Log Cleaner Script

This repository contains a practical Bash script, `log_cleaner.sh`, designed to automatically clean up log files, helping you free up valuable disk space and maintain a tidy development environment. The script is especially useful when dealing with log files that accumulate over time, preventing your system from becoming cluttered.

## Script Contents

The `log_cleaner.sh` script performs the following actions:

1. **Define Log Directory**: Before running the script, make sure to set the `LOG_DIR` variable to the path of the directory where your log files are stored. For example, you can set it as follows:

```bash
LOG_DIR="/path/to/log/directory"
```

2. **Find and Remove Old Log Files**: The script uses the `find` command to locate files (`-type f`) within the specified log directory (`$LOG_DIR`). It identifies log files that are older than 7 days (`-mtime +7`) and then proceeds to remove them using the `rm` command.

Please exercise caution when using this script, as it permanently deletes log files. Ensure that the `LOG_DIR` variable points to the correct log directory, and consider backing up critical log files before running the script.