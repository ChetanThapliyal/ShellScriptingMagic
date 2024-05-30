# Git Repository Backup Script
This Bash script automates the process of backing up a local Git repository and committing the changes to the remote repository.

## Features
- Creates a compressed backup of the local Git repository
- Commits the changes to the remote repository with a timestamp-based message
- Creates a Git tag for the backup commit with the timestamp
- Provides a completion message upon successful execution

## Usage
1. Clone the repository or download the script file.
2. Open the script file and update the following variables to match your environment:
   - `REPO_PATH`: the path to your local Git repository
   - `BACKUP_PATH`: the path to the directory where you want to store the backups
3. Save the changes and run the script using a Bash shell.

   ```
   bash backup_script.sh
   ```

4. The script will create a backup of your Git repository, commit the changes to the remote repository, and create a Git tag for the backup commit.
5. The script will print a completion message when the process is finished.

## How it Works

The script performs the following steps:

1. Defines the necessary variables, including the paths to the local Git repository and the backup directory, as well as the timestamp for the backup.
2. Creates a compressed backup of the local Git repository using the `tar` command.
3. Changes the current directory to the local Git repository, adds all the changes to the Git index, commits the changes with a timestamp-based message, and pushes the changes to the remote `main` branch.
4. Creates a Git tag with the timestamp and pushes the tag to the remote repository.
5. Prints a completion message indicating that the backup and version control process has been completed.
This script is a Bash script that automates the process of backing up a local Git repository and committing the changes to the remote repository. Here's a breakdown of the script:

1. **Variables**: The script defines four variables:
   - `REPO_PATH`: the path to the local Git repository.
   - `BACKUP_PATH`: the path to the directory where the backups will be stored.
   - `TIMESTAMP`: the current date and time in the format "YYYYMMDDhhmmss".
   - `BACKUP_FILE`: the name of the backup file, which includes the timestamp.

2. **Create a backup**: The script uses the `tar` command to create a compressed backup of the local Git repository and stores it in the `BACKUP_PATH` directory.

3. **Commit changes to Git**: The script changes the current directory to the `REPO_PATH`, adds all the changes to the Git index, commits the changes with a timestamp-based message, and pushes the changes to the remote `main` branch.

4. **Tag the commit**: The script creates a Git tag with the timestamp and pushes the tag to the remote repository. This allows you to easily identify and access the backup commit in the future.

5. **Completion message**: Finally, the script prints a message indicating that the backup and version control process has been completed.