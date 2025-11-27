#!/bin/bash
folder=$1
date=(date +%-m%-%d)

archive="${folder}-${date}.tar.gz"

tar -czf "$archive" -C "$folder"
ls -l "$archive"