#!/bin/bash

backup_files() {
    local src_dir="$1"
    local dest_dir="$2"

    # Check if source directory exists
    if [[ ! -d "$src_dir" ]]; then
        echo "Source directory $src_dir does not exist."
        return 1
    fi

    # Create destination directory if it doesn't exist
    mkdir -p "$dest_dir"

    # Copy files
    cp -r "$src_dir"/* "$dest_dir"
    echo "Backup completed from $src_dir to $dest_dir."
}

# Call the function with two arguments
backup_files "source" "backup"


