variable "aws_region" {
  type        = string
  description = "region for s3 buccket"
}
variable "aws_bucket_name" {
  type        = string
  description = "s3 bucket name"
}
variable "tag_key" {
  type        = string
  description = "Key name for s3 bucket"
}
variable "tag_value" {
  type        = string
  description = "Value of key tag"
}
variable "sg_name" {
  description = "Security group name for ec2"
  type        = string
}
variable "cidr_value" {
  type        = string
  description = "cidr for ec2 instance"
}
variable "port_from_port" {
  type        = number
  description = "port no for ec2 instance"
}
variable "port_to_port" {
  type        = number
  description = "port no for ec2 instance"
}
variable "protocol_name" {
  type        = string
  description = "protocol for ec2 instance"
}
variable "ami_id" {
  type        = string
  description = "ami id for ec2 instance"
}
variable "instance_type" {
  type        = string
  description = "instance type for ec2 instance"
}
variable "key_name" {
  type        = string
  description = "Key pair for ec2 instance"
}
