terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.34.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
  shared_credentials_file = "~/.aws/credentials"
}

resource "aws_s3_bucket" "mikes_tfdemo_greatfiles1" {
  acl = "private"
  bucket = "mike-great-files2"
  tags = {
    Name = "GreatFiles2"
  }
}

resource "aws_default_vpc" "mikes-demo-network" {
  tags = {
    Name = "Default VPC for TF demo1 blabla"
  }
}

