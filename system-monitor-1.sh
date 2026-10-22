#!/usr/bin/env bash
# Basic Linux system monitoring script

echo "===== SYSTEM MONITOR ====="
echo "Date and time: $(date)"
echo

echo "----- Uptime and load -----"
uptime
echo

echo "----- Memory usage -----"
free -h
echo

echo "----- Disk usage -----"
df -h
echo

echo "----- Top 5 processes by CPU -----"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 7
echo

echo "===== MONITORING COMPLETE ====="
