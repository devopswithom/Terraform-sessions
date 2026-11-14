provider "aws" {
    region = "us-east-1"
}


locals {
     staging_env = "dev"
}

resource "aws_instance" "web" {
  ami           = "ami-0d97d7f07b25dd693"
  instance_type = "t3.micro"

  tags = {
    Name = "${local.staging_env}-instance-tag"
  }
}


resource "aws_vpc" "test-vpc" {
  cidr_block = "10.0.0.0/16"
   tags = {
    Name = "${local.staging_env}-vpc-tag"
  }
}

resource "aws_subnet" "test-subnet" {
  vpc_id     = aws_vpc.test-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "${local.staging_env}-subnet-tag"
  }
}


