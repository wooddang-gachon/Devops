#!/bin/bash

echo "==============================="
echo "   SYSTEM HEALTH REPORT"
echo "==============================="
echo ""

echo "Date & Time:"
date
echo ""

echo "Hostname:"
hostname
echo ""

echo "Uptime:"
uptime
echo ""

echo "--------------------------------"
echo "CPU USAGE"
echo "--------------------------------"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo ""

echo "--------------------------------"
echo "MEMORY USAGE"
echo "--------------------------------"
free -h
echo ""

echo "--------------------------------"
echo "DISK USAGE"
echo "--------------------------------"
df -h
echo ""

echo "--------------------------------"
echo "RUNNING PROCESSES COUNT"
echo "--------------------------------"
ps aux | wc -l
echo ""

echo "--------------------------------"
echo "OPEN PORTS"
echo "--------------------------------"
ss -tuln
echo ""

echo "--------------------------------"
echo "RECENT SYSTEM ERRORS"
echo "--------------------------------"
journalctl -p 3 -xb | tail -n 10
echo ""

echo "==============================="
echo "   END OF REPORT"
echo "==============================="
