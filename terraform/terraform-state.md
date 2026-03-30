# Terraform State

## What is Terraform State?

Terraform state is the file that stores the current mapping of infrastructure resources created by Terraform.

## Why it matters

- Tracks created resources
- Helps Terraform know what to change or destroy
- Detects infrastructure drift

## Important commands

- terraform state list
- terraform state show  >>>>>>>>>>>>   terraform state show aws_security_group.sg
- terraform plan

## Important rule

Never push terraform.tfstate to GitHub.
