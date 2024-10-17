#!/bin/bash

# Define source and destination paths using $HOME
SOURCE_DIR="$HOME/qmk_firmware/keyboards/kbdfans/kbd67/mkiirgb/keymaps/ekamtaneja"
DEST_DIR="$HOME/qmk_firmware/ekamtaneja-layout"

# Print the source directory for debugging
echo "Checking existence of: $SOURCE_DIR"

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy the contents from the source to the destination
cp -r "$SOURCE_DIR/"* "$DEST_DIR/"

echo "Successfully updated $DEST_DIR with contents from $SOURCE_DIR."
