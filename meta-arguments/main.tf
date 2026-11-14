provider "aws" {
    region = "us-east-1"
}


resource "aws_instance" "web" {
  count = 3
  ami           = "ami-0d97d7f07b25dd693"
  instance_type = "t3.micro"

  tags = {
    Name = "web-server-${count.index}"
  }
}








