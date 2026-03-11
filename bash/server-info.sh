#!/bin/bash

echo "---------------------------------------------------------------"

echo "Enter server name"
read server

echo "server description"

read description

echo "----------------------------------------------------------------"

echo "server details"
echo "server name: $server-name "
echo "server is used for: $description"
echo "server hostname: $(hostname)"
echo "you are using: $(whoami) user"
echo "uptime is : $(uptime)"
