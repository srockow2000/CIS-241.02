#!/usr/bin/bash


lscpu | sed -n '5p'
echo =======
echo

echo "Memory:"
echo =======
echo

free -h | sed -n '1p'
free -h | sed -n 's/Gi/ Gigabytes/g; /Mem:/p'

echo
echo "Disks:"
echo "======="
echo
df -h | sed -n '/T/p'

echo
echo "Date:"
echo "===="
date +'%A %d %B %Y. %X%Z' | sed -e 's/y/y,/; s/PM/ p.m. /; s/EST/ Eastern Standard/'
