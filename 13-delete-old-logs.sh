#!/bin/bash

APP_LOGS_DIR=/home/centos/app-logs

#DATE=$(date +%F:%H:%M:%S)
DATE=$(date +%F)
echo "$DATE"
LOGSDIR=/home/centos/shellscript-logs
# /home/centos/shellscript-logs/script-name-date.log
SCRIPT_NAME=$0

echo " script name is :$SCRIPT_NAME"
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

echo "Started..............."

echo "Directory :$APP_LOGS_DIR"

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)

echo "Files $FILES_TO_DELETE"

echo "script started executing at $DATE" &>>$LOGFILE

while read line
do
    echo "Deleting $line" &>>$LOGFILE
    rm -rf $line
done <<< $FILES_TO_DELETE