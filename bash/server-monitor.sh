#!/bin/bash
echo "================Server Monitoring Script Started==============="
logfile=/root/devops-journey/bash/logfile.txt
echo "================Server Monitoring Script Started===============" >$logfile
while read servers
do
	if ping -c 1 -4 $servers >> /dev/null
	then
		echo "$servers is rechable $(date)" >>$logfile
	else
		echo "$servers is Unrechable $(date)" >>$logfile
	fi
done < servers.txt
echo "Script completed" >>$logfile
