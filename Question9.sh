#!/bin/bash

process="$1"
report_file="process_report.txt"

echo "========== Process Status Report ==========" > "$report_file"
echo "" >> "$report_file"

if [ -z "$process" ]; then
    echo "Please provide a process name."
    exit 1
fi

pids=$(pgrep -x "$process")

if [ -z "$pids" ]; then
    echo "Process '$process' is not running." >> "$report_file"
else
    echo "Process '$process' is running." >> "$report_file"
    echo "" >> "$report_file"

    echo "Process Details:" >> "$report_file"
    ps -p "$(echo "$pids" | paste -sd,)" -o pid,comm,%cpu,%mem >> "$report_file"
fi

echo ""
echo "Report saved successfully in $report_file"