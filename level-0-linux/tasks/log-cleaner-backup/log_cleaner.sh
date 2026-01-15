#!/bin/bash

# Config
LOG_DIR="/var/log"
BACKUP_DIR="$PWD/backups"
DAYS_OLD=7
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

mkdir -p "$BACKUP_DIR"

echo "Starting log cleanup at $TIMESTAMP"

# Find old log files
old_logs=$(find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS_OLD 2>/dev/null)

if [ -z "$old_logs" ]; then
    echo "No old log files found."
    exit 0
fi

ARCHIVE_NAME="logs_backup_$TIMESTAMP.tar.gz"

# Compress logs
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" $old_logs 2>/dev/null

# Delete original logs
for log in $old_logs; do
    rm -f "$log"
done

echo "Backup created: $BACKUP_DIR/$ARCHIVE_NAME"
echo "Old logs cleaned successfully."
