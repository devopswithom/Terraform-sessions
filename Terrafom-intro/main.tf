provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "test-instance"{
       ami           =    "ami-0d97d7f07b25dd693"
       instance_type =    "t3.micro"
       tags          = {
                 Name = "ec2-terraform-demo"
       } 
}