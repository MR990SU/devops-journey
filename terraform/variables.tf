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

