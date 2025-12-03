#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <Archive_File> <Destination_Directory>"
    exit 1
fi

ARCHIVE_FILE=$1
DEST_DIR=$2

mkdir -p "$DEST_DIR"

echo "Extracting $ARCHIVE_FILE to $DEST_DIR..."
tar -xzvf "$ARCHIVE_FILE" -C "$DEST_DIR"

echo "----------------------------------------"
echo "Recursive list of extracted files and their content:"
echo "----------------------------------------"

find "$DEST_DIR" -type f | while read extracted_file; do
    echo "File Name: $extracted_file"
    echo "--- Content Start ---"
    cat "$extracted_file"
    echo "--- Content End ---"
    echo "" 
done