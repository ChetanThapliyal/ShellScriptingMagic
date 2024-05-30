#!/bin/bash

# Variables
REPO_PATH="/path/to/local/repo"
BACKUP_PATH="/path/to/backups"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$BACKUP_PATH/backup_$TIMESTAMP.tar.gz"

# Create a backup
tar -czf "$BACKUP_FILE" -C "$REPO_PATH" .

# Commit changes to git
cd "$REPO_PATH" || exit
git add .
git commit -m "Backup and commit at $TIMESTAMP"
git push origin main

# Tag the commit
git tag -a "backup_$TIMESTAMP" -m "Backup at $TIMESTAMP"
git push origin "backup_$TIMESTAMP"

echo "Backup and version control completed at $TIMESTAMP"
echo "Backup file: $BACKUP_FILE"
echo "Repo path: $REPO_PATH"
echo "Backup path: $BACKUP_PATH"
echo "Timestamp: $TIMESTAMP"