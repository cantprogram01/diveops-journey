resource "aws_security_group" "allow-ssh" {
  vpc_id      = aws_vpc.main.id
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
    protocol    = "tcp"
    cidr_blocks = ["152.32.111.87/32"]
  }
  tags = {
    Name = "allow-ssh"
  }

}


# resource "aws_security_group" "allow-mariadb" {
#   vpc_id      = "${aws_vpc.main.id}"
#   name        = "allow-mariadb"
#   description = "security group to allow mariadb to ingress traffic"
#   egress { #is outgoing traffic
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress { #is incoming traffic
#     from_port   = 3306
#     to_port     = 3306
#     protocol    = "tcp"
#     security_groups = ["${aws_security_group.allow-ssh.id}"] #allow our instance to access the DB
#   }
#   tags = {
#     Name = "allow-mariadb"
#   }

# }