#!/bin/bash
source_dir="./files"
for filename in "$source_dir"/*; do
    first_char=$(basename "$filename" | head -c 1 | tr '[:upper:]' '[:lower:]')
    target_folder="./$first_char"
    mv "$filename" "$target_folder"
done