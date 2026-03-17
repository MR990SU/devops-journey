#!/bin/bash
srcdir=$(dirname "$(realpath "$0")")
report="$srcdir/report.txt"
logs="$srcdir/../logs/dumy.log"
echo "Log-analyzer Started at $(date)" >$report
if [ ! -f $logs ]
then
	echo "logs not found" >$report
	exit 1
fi
errorcount=$(grep -c -i "error" $logs)
infocount=$(grep -c -i "info" $logs)
warningcount=$(grep -c -i "warning" $logs)
echo "" >>$report
echo "Total error count: $errorcount" >>$report
echo "Total warning count: $warningcount" >>$report
echo "Total info count: $infocount" >>$report
echo "Script Completed at $(date)" >>$report
echo "Report generated $report"
echo "Script Completed at $(date)"

