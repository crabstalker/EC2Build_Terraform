#contents to build ec2 instance 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "NFL_Server" {
  ami           = "ami-085ad6ae776d8f09c"
  instance_type = "t2.micro"

  tags = {
    Name = "NFL Server"
  }
}
