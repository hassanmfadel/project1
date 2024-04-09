#!/bin/bash
#define vars
time=$($date +%m-%d-%y_%H_%M_%s)
#time=`$date +%m-%d-%y_%H_%M_%s``
bachup_file=$1
Dest=/home/ubuntu/backup
filename=file-backup-$time.tar.gz
LOG_FILE="/home/ubuntu/backup/logfile.log"
