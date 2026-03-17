#!/bin/bash
echo "================Server Monitoring Script Started==============="
logfile=/root/devops-journey/logs/logfile.txt
echo "================Server Monitoring Script Started===============" >$logfile
while read servers
do
	if ping -c 1 -4 $servers >> /dev/null
	then
		echo "[ $(date) ] $servers is rechable" >>$logfile
	else
		echo "[ $(date) ] $servers is Unrechable" >>$logfile
	fi
done < servers.txt
echo "Script completed" >>$logfile
