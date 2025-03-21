resource "aws_security_group" "xonotic_sg" {
  vpc_id = data.aws_vpc.default.id

  ingress {
    from_port = 26000
    to_port = 26000
    protocol = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}