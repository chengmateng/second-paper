#!/bin/bash

# Set the new base name
new_base_name="paper2"

# Get the script name
script_name=$(basename "$0")

for file in *; do
  # Skip the script itself and any other files you want to exclude
  if [[ "$file" == "$script_name" || "$file" == "exclude_this_file.ext" ]]; then
    continue
  fi

  # Get the file extension
  extension="${file##*.}"
  
  # Create the new file name
  new_name="${new_base_name}.${extension}"
  
  # Rename the file
  mv "$file" "$new_name"
  
  echo "Renamed $file to $new_name"
done