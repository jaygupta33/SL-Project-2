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