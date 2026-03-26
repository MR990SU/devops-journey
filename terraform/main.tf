terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket = var.aws_bucket_name

  tags = {
    Name        = var.tag_key
    Environment = var.tag_value
  }
}
