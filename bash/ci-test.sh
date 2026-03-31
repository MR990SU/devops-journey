echo "==========Jenkins Build Started=========="
echo "Build time : $(date)"
echo "Hostname : $(hostname)"
echo "Current User : $(whoami)"
echo "Current Directory : $(pwd)"
echo "System Uptime"
uptime
echo "Disk Usage"
df -h
echo "Files Is Workplace"
ls -la
echo "CI script executed successfully"
