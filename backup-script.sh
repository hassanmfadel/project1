#!/bin/bash
#define vars
#time=$($date +%m-%d-%y_%H_%M_%s)
time=$(date +%m-%d-%y_%H_%M_%S)
#time=`$date +%m-%d-%y_%H_%M_%s``
bachup_file=$1
dest=/home/ubuntu/backup
filename=file-backup-$time.tar.gz
LOG_FILE="/home/ubuntu/backup/logfile.log"


if [ -z "$bachup_file" ]
then
#if bachup_file (the user must enter the route of the file)is an empty file then you must enter the file route
echo "Please , enter the directory you want to backup" | tee -a "$LOG_FILE"
#tee used to save the message in log file
exit 2
fi
#if the last condition is false
if [ $? -ne 2 ]
 then
# $? save the exit status, if not equal 2 that mean the file isn't empty
  if [ -f $filename]
   then
# -f used to check if file exits
echo "Error $filename already exists" | tee -a "$LOG_FILE" 
  else
tar -czvf "$dest/$filename" "$backup_file"
# tar c: create, z: compression algorith, v: show the file compressed f: name the file
echo "BAckup complete successfully, backup file: $dest/$filename" | tee -a "$LOG_FILE"
   fi
fi
