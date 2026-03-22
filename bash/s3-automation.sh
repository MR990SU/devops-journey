#!/bin/bash
echo "===============Script Started ==============="
bucket_name="s3://subhajit-devops-$(date +%s)"
echo "Creating Bucket----------------"
aws s3 mb "$bucket_name"
echo " Bucket created"
if [ $? -ne 0 ]
then
	echo "Error Encountered"
	exit 1
fi
(aws s3 ls)
if [ $? -ne 0 ]
then
	echo "Error Encountered"
	exit 1
fi	
file=file.txt
echo "This is from DevOps automation script" >> "$file"
echo "Uploading file to s3"
aws s3 cp "$file" "$bucket_name"
if [ $? -ne 0 ]
then
	echo "Error Encountered"
	exit 1
fi	
echo "File Uploadded"
echo "Script completed $(date)"

