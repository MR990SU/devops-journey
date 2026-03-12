#!/bin/bash
echo "===============File based server check==================="
file="bash/servers.txt"
while read server
do
	if ping -c 1 -4 $server
	then
		echo "$server is rechable"
	else
		echo "$server is unrechable"
	fi
done < $file
echo ""
echo "Script is completed"
