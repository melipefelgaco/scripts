#!/bin/bash

# Define paths
BACKUP_DIR=~/games/dcss
SOURCE_DIR=~/Library/Application\ Support/Dungeon\ Crawl\ Stone\ Soup/saves  # FIXED

# Ensure backup directory exists
mkdir -p "$BACKUP_DIR"

# Remove old backup (if it exists)
rm -rf "$BACKUP_DIR/latest"

# Create new backup
mkdir "$BACKUP_DIR/latest"
cp -r "$SOURCE_DIR/"* "$BACKUP_DIR/latest/"  # FIXED

echo "Backup saved to: $BACKUP_DIR/latest"
