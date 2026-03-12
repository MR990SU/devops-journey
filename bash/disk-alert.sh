echo "========= Disk Usage Monitor ======="
disk=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')
echo "Current Disk Usage is: $disk%"
if [ $disk -gt 80 ]
then
    echo "Warning Disk Usage is high"
else
    echo "Disk Usage is Normal"
fi
