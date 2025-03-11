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

  tags = {
    Name = "Jenkins_Terraform"
  }
}

