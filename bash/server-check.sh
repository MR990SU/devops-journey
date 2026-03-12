server=("google.com" "github.com" "aws.amazon.com")
for server in "${server[@]}"
do
  echo ""
  echo "Cheking Rechability status"
  ping -c 1 -4 $server > /dev/null
  if [ $? -eq 0 ]
  then
      echo "$server is Rechable"
  else
      echo "$server is Unrechable"
  fi
done
echo ""
echo "Checking Script Completed"

