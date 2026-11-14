provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "test-instance"{
       ami           =    "ami-0d97d7f07b25dd693"
       instance_type =    var.instance_type
        
      
       tags          =   {
           Name = "env"
       }
}