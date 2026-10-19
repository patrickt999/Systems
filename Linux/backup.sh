#!/bin/bash

# Create /var/backup if it doesn't exist
mkdir -p /var/backup

# Create new backup '/var/backup/home.tar'
tar cvf /var/backup/home.tar /home

# Get the current date
DATE=$(date +%m%d%Y)

# Moves the file `'/var/backup/home.tar'` to `'/var/backup/home.MMDDYYYY.tar'`.
mv /var/backup/home.tar /var/backup/home.$DATE.tar

# List all files in `/var/backup`, including file sizes, and save the output to `/var/backup/file_report.txt`.
ls -lh /var/backup > /var/backup/file_report.txt

# Print how much free storage your machine has left. Save this to a file called `/var/backup/disk_report.txt`.
df -h > /var/backup/disk_report.txt
