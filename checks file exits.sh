#!/bin/bash
echo "Enter the filename"
read file1
if [ ! -s -eq 1 ]; then
    echo "file1 is empty or does not exist."
    ls -l > file1
else
    echo "File file1 already exists." 
fi
