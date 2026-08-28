#!/bin/bash

report_file="user_login_report.txt"
user="$1"

echo "========== User Login Report ==========" > "$report_file"
echo "" >> "$report_file"

echo "Currently Logged-in Users:" >> "$report_file"
loginctl list-users --no-legend | awk '{print $2}' >> "$report_file"
echo "" >> "$report_file"

count=$(loginctl list-users --no-legend | wc -l)
echo "Number of Logged-in Users: $count" >> "$report_file"
echo "" >> "$report_file"

if [ -z "$user" ]; then
    echo "No user specified." >> "$report_file"
else
    if loginctl list-users --no-legend | awk '{print $2}' | grep -qx "$user"; then
        echo "User $user is currently logged in." >> "$report_file"
    else
        echo "User $user is not currently logged in." >> "$report_file"
    fi
fi

echo "" >> "$report_file"

echo "Last 10 User Logins:" >> "$report_file"
last -n 10 >> "$report_file"
echo "" >> "$report_file"

unique_users=$(last | awk '$1 !~ /^(reboot|shutdown|wtmp)$/ {print $1}' | sort -u | wc -l)
echo "Number of Unique Users Who Logged In: $unique_users" >> "$report_file"
echo "" >> "$report_file"

echo "Most Recent Logins:" >> "$report_file"
last -n 5 >> "$report_file"

echo ""
echo "Report saved successfully in $report_file"