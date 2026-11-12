variable "instance_type" {
 description      = "This is for the instance type"
 type             =  string
 default          = "t3.micro"

}

#data type number
variable "instance_count" {
    description = "count of instances"
    type         = number
    default      = 1
 
}

variable "enable_public_ip" {
    description = "enable_public"
    type        = bool
    default   =   true
}

# variable "user_names" {
#   description = "usernames"
#   type        = list(string)
#   default     = ["user1", "user2", "user3"]
# }


variable "tag_name" {
  description = "Tagging the instance"  
  type        = map(string)
  default = {
    project = "demo"
    env = "test"
    
  }
}






