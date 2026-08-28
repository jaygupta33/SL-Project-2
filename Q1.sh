#!/bin/bash 
DIR=$1
if [ ! -d "$DIR" ]; then
echo "Directory doesnt exist" 
exit 1
fi

echo -n "Total files:"
find "$DIR" -type f | wc -l
echo -n "Disk Usage:"
du -sh "$DIR" | cut -f1
echo "Files"
ls -lt "$DIR"
echo "Analysis completed"

