# resource "aws_iam_user" "example" {
#   count =  length(var.user_names)
#   name  = var.user_names
# }

# variable "user_names" {
#   description = "IAM usernames"
#   type        = list(string)
#   default     = ["user1", "user2", "user3", "user4"]
# }


# resource "aws_instance" "name" {
#   count         = 3
#   ami           = var.ami
#   instance_type = var.instance_type[1]
#   tags = {
#     "Name" = "test-instance${count.index}"
#   }


