resource "aws_security_group" "allow-ssh" {
  vpc_id      = aws_vpc.main
  name        = "allow-ssh"
  description = "security group to allow ssh to egress traffic"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "-1"
    cidr_blocks = ["152.32.111.87/32"]
  }
  tags = {
    Name = "allow-ssh"
  }

}