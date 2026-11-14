provider "aws" {
    region = "us-east-1"
}


terraform {
  backend "local" {
    path = "C:/terraform-states/intro/terraform.tfstate"
  }
}
resource "aws_instance" "test-instance"{
       ami           =    "ami-0d97d7f07b25dd693"
       instance_type =    var.instance_type
       count         =    var.instance_count   
       associate_public_ip_address  = var.enable_public_ip
      
       tags          =   var.tag_name
}

# resource "aws_iam_user" "Creating_users" {
#      count  = length(var.user_names)
#      name   =  var.user_names[count.index]
  
# }




















