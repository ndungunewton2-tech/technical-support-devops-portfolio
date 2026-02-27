#!/bin/bash

echo "System Health Check"
echo "-------------------"

echo "Uptime:"
uptime

echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Running Services:"
systemctl list-units --type=service --state=running | head -10

echo ""
echo "Health check completed."
