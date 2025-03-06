#!/bin/bash

# Define paths
BACKUP_DIR=~/games/dcss/dcss-save-scum
SOURCE_DIR="~/Library/Application Support/Dungeon Crawl Stone Soup/saves"

# Ensure backup directory exists
mkdir -p "$BACKUP_DIR"

# Find the highest existing backup number
LAST_NUM=$(ls "$BACKUP_DIR" | sort -n | tail -n 1)

# If no backups exist, start at 1; otherwise, increment
if [[ -z "$LAST_NUM" ]]; then
  NEXT_NUM=1
else
  NEXT_NUM=$((LAST_NUM + 1))
fi

# Create the new backup directory
NEW_BACKUP="$BACKUP_DIR/$NEXT_NUM"
mkdir "$NEW_BACKUP"

# Copy files
cp -r "$SOURCE_DIR/"* "$NEW_BACKUP/"

echo "Backup created at: $NEW_BACKUP"
