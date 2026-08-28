#!/bin/bash

directory_report() {
    dir="$1"

    echo "----------------------------------------"
    echo "Directory: $dir"

    if [ ! -d "$dir" ]; then
        echo "Status: Directory does not exist."
        return
    fi

    echo "Status: Exists"

    file_count=$(find "$dir" -type f | wc -l)
    echo "Number of files: $file_count"

    usage=$(du -sh "$dir" | cut -f1)
    echo "Disk Usage: $usage"

    size_mb=$(du -sm "$dir" | cut -f1)

    if [ "$size_mb" -lt 100 ]; then
        echo "Category: Small (<100 MB)"
    elif [ "$size_mb" -lt 1024 ]; then
        echo "Category: Medium (100 MB - 1 GB)"
    else
        echo "Category: Large (>1 GB)"
    fi
}

if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory1> <directory2> ..."
    exit 1
fi

for directory in "$@"
do
    directory_report "$directory"
done

#Output 
#Directory: ./
#Status: Exists
#Number of files: 15
#Disk Usage: 60K
#Category: Small (<100 MB)