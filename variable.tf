variable "ami" {
  description = "variable for my web instance server"
  type        = string
  default     = "ami-0dfcb1ef8550277af"

}


variable "instance_type" {
  description = "variable for my web instance server"
  type        = set(any)
  default     = ["t2.medium", "t2.micro", "t3.nano"]

}

variable "az" {
  description = "variable for my web instance server"
  type        = list(any)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]

}


# variable "key-name" {
#   type = string

# }



# variable "tags" {
#   description = "variable for my web instance tags"
#   type        = map
#   default = {
#     Name        = "webserver"
#     project     = "terraform"
#     Environment = "Prod"
#   }


# }


# variable "associate_public_ip_address" {
#   description = "variable for associate_public_ip_address. expects 0 or 1"
#   type        = bool
#   default     = "true"

# }


