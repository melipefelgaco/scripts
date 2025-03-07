#!/bin/bash

# Define paths
BACKUP_DIR=~/games/dcss/latest
DEST_DIR=~/Library/Application\ Support/Dungeon\ Crawl\ Stone\ Soup/saves  # FIXED

# Check if backup exists
if [[ ! -d "$BACKUP_DIR" ]]; then
  echo "No backup found!"
  exit 1
fi

# Clear the destination directory
rm -rf "$DEST_DIR"/*

# Restore from the latest backup
cp -r "$BACKUP_DIR/"* "$DEST_DIR/"  # FIXED

echo "Restored save from: $BACKUP_DIR"
