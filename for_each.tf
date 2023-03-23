# # variable "user_names" {
# #   description = "IAM usernames"
# #   type        = set(string)
# #   default     = ["user1", "user2", "user3", "user4", "user5"]
# # }

# # resource "aws_iam_user" "example" {
# #   for_each = var.user_names
# #   name     = each.value
# # }

# # ################################################
# # ##MAP
# # ##################################

variable "user_names" {
  description = "IAM usernames"
  type        = map
  default     = {
    teama= "user1"
    teamb= "user2"
    teamc= "user3" 
    teamd= "user4"
    teame= "user5"
}
}

resource "aws_iam_user" "example" {
  for_each = var.user_names
  name     = each.value
}


# variable "instance_type" {
#   description = "variable for my web instance server"
#   type        = set(any)
#   default     = ["t2.medium", "t2.micro", "t3.nano", "t4.nano"]

# }

# resource "aws_instance" "name" {
#   for_each = var.instance_type
#   ami = var.ami
#   instance_type = each.value
# }



