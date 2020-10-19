terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  aws_region     = var.aws_region
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
}

# Create VPC
resource "aws_vpc" "omega_vpc" {
  cidr_block       = "10.0.0.0/16"
  
  tags = {
    Name = "training_vpc"
  }
}