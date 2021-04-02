terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.aws_region
  shared_credentials_file = "~/.aws/credentials"

}

resource "aws_instance" "myserver" {
  count = 2
  ami           = "ami-0767046d1677be5a0"
  instance_type = "t2.nano"

  tags = {
    Name = "DemoInstanceDropSoon-${count.index}"
  }
}

output "myipaddress"{
  value = aws_instance.myserver[*].private_ip
}
output "mytags"{
  value = aws_instance.myserver[*].tags.Name
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "mike.demo.my-shiny-bucket"
  acl    = "private"

  tags = {
    Name        = var.bucketname
    Environment = "Dev"
  }
}
