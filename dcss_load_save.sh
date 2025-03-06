#!/bin/bash

# Define paths
BACKUP_DIR="~/games/dcss/dcss-save-scum"
DEST_DIR="~/Application Support/Dungeon Crawl Stone Soup/saves"

# Find the highest existing backup number
LAST_NUM=$(ls "$BACKUP_DIR" | sort -n | tail -n 1)

# If no backups exist, exit
if [[ -z "$LAST_NUM" ]]; then
  echo "No backups found!"
  exit 1
fi

LAST_BACKUP="$BACKUP_DIR/$LAST_NUM"

# Clear the destination directory
rm -rf "$DEST_DIR"/*

# Copy files from the latest backup
cp -r "$LAST_BACKUP/"* "$DEST_DIR/"

echo "Restored save from: $LAST_BACKUP"
