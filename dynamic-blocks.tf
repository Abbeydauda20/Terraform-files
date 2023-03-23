# #### Dynamic blocks for security groups
# variable "sg_ports" {
#   type = list
#   description = "List of ingress ports"
#   default = ["443", "80", "9000","9300", "8300", "3306"]

# }

# resource "aws_security_group" "dynamic_sg" {
#   name = "dynamic_sg"

#   dynamic "ingress" {
#     for_each = var.sg_ports
#     iterator = ports
#     content {
#       from_port = ports.value
#       to_port = ports.value
#       protocol = "tcp"
#       cidr_blocks = [ data.aws_vpc.name.cidr_block ]
#     }
#   }
# }

# data "aws_vpc" "name" {
#   filter {
#         name = "tag:Name"
#         values = ["project-vpc"]
# }
# }
# # ##########################################################################

