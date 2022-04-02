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
  # ingress { #THIS WILL ALLOW THE LOAD BALANCER TO ACCESS PORT 80 TO THE INSTANCE!
  #   from_port   = 80
  #   to_port     = 80
  #   protocol    = "tcp"
  #   security_groups = [aws_security_group.allow-alb-ports.id]
  # }
  tags = {
    Name = "allow-ssh"
  }

}

resource "aws_security_group" "allow-alb-ports" {
  vpc_id      = aws_vpc.main.id
  name        = "allow-alb-ports"
  description = "security group to allow ports"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress { #this will allow ALL USERS TO ACCESS THE LOAD BALANCER URL
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks= ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-elb"
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