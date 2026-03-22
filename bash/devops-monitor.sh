#!/bin/bash 
srcdir=$(dirname "$(realpath "$0")") 
logfile="$srcdir/../logs/dummy.log" 
report="$srcdir/report.txt" 
warning_threshold=3 
critical_threshold=6 
echo "==============Script Started==============" > $report 
echo "Run Time: $(date)" | tee -a $report 
echo "Log used: $logfile" | tee -a $report 
echo "Report generated: $report" | tee -a $report 
if [ ! -f "$logfile" ] 
then 
	echo "ERROR: Log File Not Found" | tee -a $report 
	exit 1 
fi 
error_count=$(grep -ic "error" "$logfile") 
warning_count=$(grep -ic "warning" "$logfile") 
info_count=$(grep -ic "info" "$logfile") 
echo "Total Log Summary" | tee -a $report 
echo "Total Error Count: "$error_count"" | tee -a $report 
echo "Total Warning Count: "$warning_count"" | tee -a $report 
echo "Total Info Count: "$info_count"" | tee -a $report 
echo "Total error: $error_count" | tee -a $report 
echo "Top Errors:" | tee -a $report 
echo "" | tee -a $report 
grep -i "error" "$logfile" | sort | uniq -c | sed 's/error //I' | sort -nr | head -3 | tee -a $report 
if [ $error_count -ge $critical_threshold ] 
then 
	echo "CRITICAL: High error rate detected" | tee -a $report
elif [ $error_count -ge $warning_threshold ] 
then 
	echo "WARNING: Elevated error rate" | tee -a $report
else 
	echo "INFO: System is healthy" | tee -a $report
fi 

