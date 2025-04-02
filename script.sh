#!/bin/bash

# File Organization Script
# This script organizes files in a specified directory based on their extensions.

# Configuration
TARGET_DIR="$1"  # Directory to organize
LOG_FILE="file_organizer.log"

# Ensure target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory '$TARGET_DIR' does not exist." | tee -a "$LOG_FILE"
    exit 1
fi

# Function to create a directory if it doesn't exist
create_directory() {
    local dir="$1"
    if [ ! -d "$dir" ]; then
        mkdir -p "$dir"
        echo "Created directory: $dir" | tee -a "$LOG_FILE"
    fi
}

# Function to move files based on extension
organize_files() {
    for file in "$TARGET_DIR"/*; do
        if [ -f "$file" ]; then
            ext="${file##*.}"
            ext=${ext,,}  # Convert to lowercase
            
            if [[ "$file" != *"."* ]]; then
                ext="unknown"
            fi
            
            dest_dir="$TARGET_DIR/$ext"
            create_directory "$dest_dir"
            mv "$file" "$dest_dir/"
            echo "Moved $file to $dest_dir/" | tee -a "$LOG_FILE"
        fi
    done
}

# Function to log errors
log_error() {
    echo "[ERROR] $1" | tee -a "$LOG_FILE"
}

# Main Execution
echo "Starting file organization in $TARGET_DIR" | tee -a "$LOG_FILE"
organize_files
echo "File organization complete." | tee -a "$LOG_FILE"
