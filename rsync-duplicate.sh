#!/bin/bash

SOURCE="/home/"
DEST="/home-2/"
LOGFILE="/var/log/rsync-backup.log"
DATE=$(date +"%Y-%m-%d %H:%M:%S")

rsync -a --delete "$SOURCE" "$DEST" >> "$LOGFILE" 2>&1
echo "Duplicate of /home to /home-2 completed at $DATE" >> "$LOGFILE"

