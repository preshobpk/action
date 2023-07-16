provider "aws" {
}
variable "proj_name" {
  default = "zomato"
}
variable "proj_env" {
  default = "prod"
}
resource "aws_security_group" "zomato-sg" {
  name        = "${var.proj_name}-${var.proj_env}-SG"
  description = "zomato-sg"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name    = "${var.proj_name}-${var.proj_env}-SG"
    project = "var.proj_name"
    env     = "var.proj_env"
  }
}
