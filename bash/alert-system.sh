#!/bin/bash
srcdir=$(dirname "$(realpath "$0")")
logfile="$srcdir/../logs/dummy.log"
report="$srcdir/report.txt"
echo "==================Script started==================="
echo "Script started at $(date)" >$report
errorcount=$(grep -ic "error" "$logfile" )
warning_threshold=3
critical_threshold=6
echo "" >>$report
if [ ! -f "$logfile" ]
then
    echo "ERROR: Log file not found at $logfile" | tee -a "$report"
    exit 1
fi
echo "Total ERROR : $errorcount">>$report 
echo "Total ERROR : $errorcount"
echo ""
errors=$(grep -i "error" "$logfile" | sort | sed 's/error //I' | uniq -c | sort -nr | head -3 )

if [ $errorcount -ge $critical_threshold ]
then
	echo "$errors"
	echo "$errors">>$report
	echo "CRITICAL: Too much error occurs"
	echo "CRITICAL: Too much error occurs" >>$report
elif [ $errorcount -ge $warning_threshold ]
then
	echo "$errors"
	echo "$errors">>$report
	echo "WARNING: Error count is high"
	echo "WARNING: Error count is high" >>$report
else
	echo "INFO: System is healthy"
	echo "INFO: System is healthy" >>$report
fi
echo "Script end at $(date)" >>$report
echo "Script end at $(date)"
echo "============end==================="


