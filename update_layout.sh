#!/bin/bash

# Define source and destination paths
SOURCE_DIR="$HOME/qmk_firmware/keyboards/kbdfans/kbd67/mkiirgb/keymaps/ekamtaneja"
DEST_DIR="$HOME/qmk_firmware/ekamtaneja-layout"

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy the contents from the source to the destination
cp -r "$SOURCE_DIR/"* "$DEST_DIR/"

# Add and commit changes
git add "$DEST_DIR/*"
git commit -m "Update ekamtaneja layout files"

# Push to the showcase branch
git push origin showcase-keymap

echo "Successfully updated $DEST_DIR with contents from $SOURCE_DIR." 
