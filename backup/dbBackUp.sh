#!/bin/bash
SHELL=/bin/sh
YEAR=`date +%Y`
MONTH=`date +%m`
DAY=`date +%d`
HOUR=`date +%H`
/opt/lampp/bin/mysqldump -u root -pmysql12345 rit_data_center > /home/sanath/important/RIT-Information-Site/backup/$YEAR-$MONTH-$DAY-backup.sql
#For transferring the file to other server use : sshpass -p 0987 scp tiltSensor.py  sanath@localhost:
#For deleting file from present server use : rm /home/sanath/important/RIT-Information-Site/backup/$YEAR-$MONTH-$DAY-backup.sql
