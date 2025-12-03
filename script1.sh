#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <Target_Directory> <Number_of_Files> <File_Prefix>"
    exit 1
fi

TARGET_DIR=$1
NUM_FILES=$2
PREFIX=$3

mkdir -p "$TARGET_DIR"

for (( i=1; i<=NUM_FILES; i++ ))
do
    FILENAME="${TARGET_DIR}/${PREFIX}_${i}.txt"
    
    realpath "$FILENAME" > "$FILENAME"
    basename "$FILENAME" >> "$FILENAME"
    whoami >> "$FILENAME"
done

echo "Created files in $TARGET_DIR:"
ls -l "$TARGET_DIR"