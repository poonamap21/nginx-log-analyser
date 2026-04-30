#!/bin/bash

LOG_FILE="logfile.txt"

# 1. Top 5 IP addresses
echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5 | awk '{print $2 " - " $1 " requests"}'

# 2. Top 5 requested URLs
echo -e "\nTop 5 requested URLs:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5 | awk '{print $2 " - " $1 " requests"}'

# 3. Top 5 response status codes
echo -e "\nTop 5 response status codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5 | awk '{print $2 " - " $1 " requests"}'

# 4. User agents and their request count
echo -e "\nUser agents and their request count:"
awk -F\" '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5 | awk '{print $2 " - " $1 " requests"}'

