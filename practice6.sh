#!/bin/bash


BACKUP_DIR="/mnt/reyhane-backups"  # Backup directory within reyhane's home
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_reyhane_${TIMESTAMP}.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_FILE" -C "$HOME" .

echo "Backup of $HOME created at $BACKUP_FILE"

