terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {                
  region  = "ap-south-1"
}

resource "aws_instance" "Jenkins" {
  instance_type = "t2.micro"
  ami           = "ami-0dee22c13ea7a9a67"
  tags = {
    Name = "Jenkins_Terraform"
  }
}

