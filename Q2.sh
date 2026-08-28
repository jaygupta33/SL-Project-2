#!/bin/bash 
FILE="students.csv"
if [ ! -f "$FILE" ]; then
echo "Error : File doesnt exist"
exit 1
fi

echo "total lines"
wc -l < "students.csv"

echo -n "CSE Students"
grep -c -E "Computer Science|CSE" "$FILE"

echo "end"

#Output
#jaygupta@pop-os:~/projects/linux-commands$ sh Assignment-1.sh .
#Total lines: 21
#CSE students: 5
#EE students: 2
#Analysis Completed