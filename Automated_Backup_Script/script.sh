#!/bin/bash
SOURCE_DIR="/mnt/c/Users/LENOVO/OneDrive/Desktop/Shell Scripting/Automated_Backup_Script/source_dir"
BACKUP_DIR="/mnt/c/Users/LENOVO/OneDrive/Desktop/Shell Scripting/Automated_Backup_Script/backup_dir"
TIME_STAMP=$(date '+%d-%m-%Y_%H-%M-%S')
echo '----------------------------------------------------------------------' >> "$BACKUP_DIR"/log.txt
echo "File Started Getting Backup on - $TIME_STAMP " >> "$BACKUP_DIR"/log.txt
echo "File Going to backup:-" >> "$BACKUP_DIR"/log.txt
ls "$SOURCE_DIR" >> "$BACKUP_DIR"/log.txt
mkdir -p "$BACKUP_DIR/$TIME_STAMP"
cp -r "$SOURCE_DIR"/* "$BACKUP_DIR/$TIME_STAMP/"
echo "Backup Completed - $TIME_STAMP" >> "$BACKUP_DIR"/log.txt
echo "File that are backuped:-" >> "$BACKUP_DIR"/log.txt
ls "$BACKUP_DIR/$TIME_STAMP" >> "$BACKUP_DIR"/log.txt
echo '----------------------------------------------------------------------' >> "$BACKUP_DIR"/log.txt
exit 0