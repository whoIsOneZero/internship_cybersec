#!/bin/bash

### Executes periodically

### Executing scheduled commands $at $cron

#day="Mon"
day="Wed"

#day=`date +%a`
backup_src="/home/user/Pictures"
backup_dest="/home/user/Desktop/whoisOneZero/bash_prog/TEST_BACKUP"

echo $day

case $day in
	"Mon" | "Tue")
		echo "Today is $day"
		echo "We delete all files in /tmp"
		`rm -irv /tmp/*`
		sleep 2
		echo "/tmp files deleted successfully"
		;;
	"Tue")
		echo "Today is Tuesday"
		;;
	"Wed" | "Fri")
		echo "Today is $day"
		echo "We perform the following: "
		echo "1. Backup pictures"
		`cp -irv $backup_src $backup_dest`
		;;
	*)
		echo "Unkonwn."
esac
