#!/bin/bash
srcdir=$(dirname "$(realpath "$0")")
report="$srcdir/report.txt"
logs="$srcdir/../logs/dummy.log"
echo "Log-analyzer Started at $(date)" >$report
if [ ! -f $logs ]
then
	echo "ERROR: logs not found" >$report
	exit 1
fi
echo "" >>$report
echo "$(grep -i "error" $logs | sed s/error//I | sort | uniq -c | sort -nr | head -3 )" >>$report
echo "Report generated $report"
echo "Script Completed at $(date)"

