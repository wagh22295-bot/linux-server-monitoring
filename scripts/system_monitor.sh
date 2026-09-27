Prashant:
#!/bin/bash

echo "===================================="
echo " Linux Server Health Report"
echo "===================================="

echo "Hostname : $(hostname)"
echo "Date : $(date)"
echo "Uptime : $(uptime -p)"

echo
echo "CPU Load:"
uptime | awk -F'load average:' '{print $2}'

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h /

echo
echo "Logged-in Users:"
who

echo "===================================="
