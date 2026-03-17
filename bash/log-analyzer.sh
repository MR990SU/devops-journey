#!/bin/bash
report="report.txt"
logs="../logs/dumy.log"
echo "Log-analyzer Started at $(date)" >$report
errorcount=$(grep -c -i "error" $logs)
infocount=$(grep -c -i "info" $logs)
warningcount=$(grep -c -i "warning" $logs)
echo "" >>$report
echo "Total error count: $errorcount" >>$report
echo "Total warning count: $warningcount" >>$report
echo "Total info count: $infocount" >>$report
echo "Script Completed at $(date)" >>$report
echo "Script Completed at $(date)"

