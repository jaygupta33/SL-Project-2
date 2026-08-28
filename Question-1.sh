#!/bin/bash
DIR=$1
if [ ! -d "$DIR" ]; then
    echo "Directory does not exist."
    exit 1
fi
echo -n "Total files: "
find "$DIR" -type f | wc -l
echo -n "Disk usage: "
du -sh "$DIR" | cut -f1
echo "Files (newest first):"
ls -lt "$DIR"
echo "Analysis Completed"

#Output
#jaygupta@pop-os:~/projects/linux-commands$ sh Assignment-1.sh .
#Total files: 3
#Disk usage: 16K
#Files (newest first):
#total 12
#-rw-rw-r-- 1 jaygupta jaygupta 277 Aug  5 16:29 Assignment-1.sh
#-rw-rw-r-- 1 jaygupta jaygupta 298 Aug  5 16:26 Assignment-1.txt
#-rwxr--r-- 1 jaygupta jaygupta  98 Aug  5 14:46 first.sh
#Analysis Completed