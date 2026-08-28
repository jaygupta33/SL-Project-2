#!/bin/bash
FILE="students.csv"
if [ ! -f "$FILE" ]; then
    echo "Error: $FILE does not exist."
    exit 1
fi
echo -n "Total lines: "
wc -l < "$FILE"
echo -n "CSE students: "
grep -c -E "Computer Science|CSE" "$FILE"
echo -n "EE students: "
grep -c -E "Electrical|EE" "$FILE"
echo "Analysis Completed"

#Output
#jaygupta@pop-os:~/projects/linux-commands$ sh Assignment-1.sh .
#Total lines: 21
#CSE students: 5
#EE students: 2
#Analysis Completed


