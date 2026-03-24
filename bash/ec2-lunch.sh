#!/bin/bash

echo "==========Script Started=========="
echo "Run Time: $(date)"

echo "==========Finding Images=========="
Ami_Image=$(aws ec2 describe-images \
  --owners amazon \
  --filters "Name=name,Values=amzn2-ami-hvm-*" "Name=architecture,Values=x86_64" \
  --query 'Images[*].[ImageId,CreationDate]' \
  --output text | sort -k2 -r | head -1 | awk '{ print $1 }')

echo "Used Image: $Ami_Image"

Security_Group=devops-sg2
key_file=devops_key2.pem
key=devops_key2

echo "==========Creating Security Group=========="
aws ec2 create-security-group \
  --group-name $Security_Group \
  --description "This for Second Ec2 Instance" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "Security Group may already exist, continuing..."
fi

echo "==========Allowing SSH=========="
aws ec2 authorize-security-group-ingress \
  --cidr 0.0.0.0/0 \
  --group-name $Security_Group \
  --port 22 \
  --protocol tcp 2>/dev/null || echo "SSH rule exists"

echo "==========Handling Key Pair=========="
aws ec2 describe-key-pairs --key-name $key >/dev/null 2>&1

if [ $? -ne 0 ]; then
    aws ec2 create-key-pair \
      --key-name $key \
      --query "KeyMaterial" \
      --output text > "$key_file"

    if [ ! -f "$key_file" ]; then
        echo "Key file not created locally"
        exit 1
    fi

    chmod 400 "$key_file"
    echo "Key created: $key_file"
else
    echo "Key already exists in AWS"

    if [ ! -f "$key_file" ]; then
        echo "ERROR: Key exists in AWS but file missing locally!"
        exit 1
    fi

    chmod 400 "$key_file"
fi

echo "==========Running EC2 Instance=========="
instance_id=$(aws ec2 run-instances \
  --image-id $Ami_Image \
  --security-groups $Security_Group \
  --key-name $key \
  --count 1 \
  --instance-type t3.micro \
  --query 'Instances[0].InstanceId' \
  --output text)

echo "Instance Id: $instance_id"

echo "Waiting for instance..."
aws ec2 wait instance-running --instance-ids $instance_id

echo "==========Instance Created=========="
echo "Public IP:"
aws ec2 describe-instances \
  --instance-ids $instance_id \
  --query 'Reservations[0].Instances[0].PublicIpAddress' \
  --output text

echo "==========Script Completed at $(date)=========="
