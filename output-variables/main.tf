provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "test" {
  ami           = "ami-0d97d7f07b25dd693"
  instance_type = "t3.micro"

  tags = {
    Name = "dev-instance-tag"
  }
}


output "Instance_public_IP" {
   value = aws_instance.test.public_ip
}