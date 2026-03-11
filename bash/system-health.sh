#!/bin/bash

echo "===== System Health Report ====="
echo ""

echo "Hostname:"
hostname

echo ""
echo "System Uptime:"
uptime

echo ""
echo "CPU Load:"
top -bn1 | grep "load average"

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "===== End of Report ====="
