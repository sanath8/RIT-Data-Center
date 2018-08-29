#!/bin/bash
YEAR=`date +%Y`
MONTH=`date +%m`
DAY=`date +%d`
HOUR=`date +%H`
mysqldump -u root -pmysql12345 rit_data_center > $YEAR-$MONTH-$DAY-$HOUR-backup.sql
