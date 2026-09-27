#!/bin/bash

BACKUP_DIR="$HOME/linux-server-monitoring/backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/server_backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"

echo "===================================="
echo " Linux Server Backup"
echo "===================================="

echo "Backup started : $(date)"

tar -czf "$BACKUP_FILE" /etc /var/www/html 2>/tmp/backup_error.log

if [ $? -eq 0 ]; then
echo "Backup Status : SUCCESS"
echo "Backup File : $BACKUP_FILE"
echo "Backup Size : $(du -h "$BACKUP_FILE" | awk '{print $1}')"
else
echo "Backup Status : FAILED"
echo "Check errors : /tmp/backup_error.log"
exit 1
fi

echo "Backup completed: $(date)"
echo "===================================="
