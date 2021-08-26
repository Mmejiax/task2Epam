#!/bin/bash
backup_files="/var/log"
dest="/root/task2/backups"

time=$(date +%y%m%d)
archive_file="backup-$time.tgz"
report="report-$time.txt"

#  Validate  to backup  is starting
echo "Backing up $backup_files to $dest/$archive_file" >  $dest/$report

#Execute  compress
tar czf $dest/$archive_file $backup_files

#  Validate to backup is finishing sucefully
echo "Backup finished" >>  $dest/$report 


# Save listing of files 
ls -1 $backup_files >> $dest/$report

