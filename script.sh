#!/bin/bash

# Specify the target directory
target_dir="$1"

# Specify the output file
output_file="all_text.txt"

# Clear the output file (optional)
> "$output_file"

# Recursively grep all text files in the directory and its subdirectories
grep -r -h --include='*.txt' . "$target_dir" > "$output_file"

# Print a success message
echo "All text from the directory and its subfolders has been combined into $output_file."