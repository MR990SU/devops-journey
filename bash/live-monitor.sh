#!/bin/bash
srcdir=$(dirname "$(realpath "$0")")
logfile="$srcdir/../logs/dummy.log"
report="$srcdir/report.txt"
echo "Real-Time Log Monitor Started" | tee -a "$report"
echo "Run time: $(date)" | tee -a "$report"
echo "Monitoring file: ../logs/dummy.log" | tee -a "$report"
echo "" | tee -a "$report"
if [ ! -f "$logfile" ]
then
    echo "ERROR: Log file not found at $logfile" | tee -a "$report"
    exit 1
fi
echo ""
tail -Fn0 "$logfile" | while read -r line
do
	if grep -iq "error" <<< "$line"
	then
		echo "[ALERT] : $line" | tee -a "$report"
	elif grep -iq "warning" <<< "$line"
	then
		echo "[WARNING] : $line" | tee -a "$report"
	else
		echo "[INFO] : $line" | tee -a "$report"
	
	fi
done
echo "" | tee -a "$report"
echo "Script end at $(date)" | tee -a "$report"
