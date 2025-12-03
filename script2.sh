#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <Source_Directory> <Destination_Directory> <Archive_Prefix>"
    exit 1
fi

SOURCE_DIR=$1
DEST_DIR=$2
PREFIX=$3

mkdir -p "$DEST_DIR"

CURRENT_USER=$(whoami)
TIMESTAMP=$(date +"%Y_%m_%d_%H_%M")
ARCHIVE_NAME="${PREFIX}_${CURRENT_USER}_${TIMESTAMP}.tar.gz"
echo "Archiving files from $SOURCE_DIR to $DEST_DIR/$ARCHIVE_NAME..."
tar -czvf "$DEST_DIR/$ARCHIVE_NAME" -C "$SOURCE_DIR" .

echo "Backup completed successfully: $DEST_DIR/$ARCHIVE_NAME"