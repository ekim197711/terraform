terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.36.0"
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



