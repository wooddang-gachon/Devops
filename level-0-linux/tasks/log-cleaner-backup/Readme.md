# Automated Log Cleaner & Backup

A Bash script that automatically finds old log files, compresses them, backs them up, and removes them to free disk space.

## Features
- Finds log files older than specified days
- Compresses logs into tar.gz
- Deletes original logs after backup
- Safe and cron-friendly

## Requirements
- Linux
- Bash

## Configuration
Edit variables inside `log_cleaner.sh`:
- LOG_DIR
- DAYS_OLD
- BACKUP_DIR

## Usage
```bash
chmod +x log_cleaner.sh
./log_cleaner.sh
