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

module "ec2" {

  source = "./modules/ec2"

  cidr_value     = var.cidr_value
  port_from_port = var.port_from_port
  port_to_port   = var.port_to_port
  protocol_name  = var.protocol_name
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
  sg_name        = var.sg_name
  out_protocol   = var.out_protocol
  aws_region     = var.aws_region
  aws_bucket_name = var.aws_bucket_name
  tag_key        = var.tag_key
  tag_value      = var.tag_value

}
