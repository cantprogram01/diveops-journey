resource "aws_alb" "alb" {
    name = "alb"
    subnet = ["${aws_subnet.main-public-1.id}", "${aws_subnet.main-public-2.id}"]
    security_groups = "${aws_security_group.allow-alb.id}"
  Name = "alb"
}