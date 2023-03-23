# data "aws_ami" "linux2" {
#   provider      = aws.west

#   most_recent = true

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   filter {
#     name   = "name"
#     values = ["amzn2-ami-kernel-5.10-hvm-2.0.20230221.0-x86_64-gp2"]
#   }

#   owners = ["amazon"]
# }

# resource "aws_instance" "web1" {
#   ami           = data.aws_ami.linux2.id
#   instance_type = "t3.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }

# resource "aws_instance" "web2" {
#   provider      = aws.west
#   ami           = "ami-060d3509162bcc386"
#   instance_type = "t3.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }

