#!/bin/bash

DATE=$(date +%Y-%m-%d)

OUTPUT_FILE="/home/reyhane/passwd_$DATE.txt"

awk -F: '{print $1, $3}' /etc/passwd > "$OUTPUT_FILE"

echo "Saved first and third fields of /etc/passwd to $OUTPUT_FILE"

find /home/reyhane -name "passwd_*.txt" -type f -mtime +2 -exec rm {} \;

echo "Cleaned up files older than 2 days."

