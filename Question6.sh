#!/bin/bash

report_file="system_report.txt"

echo "========== System Information Report ==========" > "$report_file"
echo "Date & Time       : $(date)" >> "$report_file"
echo "Logged-in User    : $(whoami)" >> "$report_file"
echo "Hostname          : $(hostname)" >> "$report_file"
echo "Working Directory : $(pwd)" >> "$report_file"
echo "" >> "$report_file"

echo "Available Disk Space:" >> "$report_file"
df -h / >> "$report_file"
echo "" >> "$report_file"

echo "Available Memory:" >> "$report_file"
free -h >> "$report_file"
echo "" >> "$report_file"

echo "System Uptime:" >> "$report_file"
uptime >> "$report_file"

echo "Report saved successfully in $report_file"