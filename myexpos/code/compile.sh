#!/bin/bash

# Loop through all files in the current directory
for file in *; do
    # Check if it's a regular file
    if [ -f "$file" ]; then
        # Get the file extension
        case "$file" in
            *.spl)
                # Compile SPL files
                echo "Compiling SPL file: $file"
                oslab spl "$file"
                ;;
            *.expl)
                # Compile EXPL files
                echo "Compiling EXPL file: $file"
                oslab expl "$file"
                ;;
            *)
                # Ignore other file types
                ;;
        esac
    fi
done

echo "Compilation process completed."

echo "Loading to xfs-interface..."
parent_dir_path=$(pwd)
oslab xfs-interface run "$parent_dir_path/script"
echo "Loaded from $parent_dir_path"
