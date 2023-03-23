# resource "aws_instance" "web" {
#   ami           =  var.ami
#   instance_type = var.instance_type[2]
#   vpc_security_group_ids = [aws_security_group.web_server_sg_tf.id]
#  depends_on = [
#   aws_security_group.web_server_sg_tf
# ]

# }

# data "aws_vpc" "default" {
#  default = true
# }

# resource "aws_security_group" "web_server_sg_tf" {
#  name        = "web-server-sg-tf"
#  description = "Allow HTTPS to web server"
#  vpc_id      = data.aws_vpc.default.id

# ingress {
#    description = "HTTPS ingress"
#    from_port   = 443
#    to_port     = 443
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }

# ingress {
#   cidr_blocks = ["0.0.0.0/0"]
#   description = "http ingress"
#   protocol    = "tcp"
#   from_port = 80
#   to_port = 80
# }

# egress {
#    from_port   = 0
#    to_port     = 0
#    protocol    = "-1"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
# }