#creating the app load balancer
resource "aws_lb" "alb" {
    name = "alb"
    internal = "false"
    load_balancer_type = "application"
    subnets = ["${aws_subnet.main-public-1.id}", "${aws_subnet.main-public-2.id}"]
    security_groups = [aws_security_group.allow-alb-ports.id]
}

#creating app load balancer group
resource "aws_lb_target_group" "alb-group" {
    name = "alb-group"
    target_type = "instance"
    port = 80
    protocol = "HTTP"
    vpc_id = "${aws_vpc.main.id}"
  
}

#attaching the app load balancer to group
resource "aws_lb_target_group_attachment" "alb-attachment" {
    target_group_arn = aws_lb_target_group.alb-group.arn #attaching the group to the alb
    target_id = "${aws_instance.sample.id}" #attaching the alb to the instance
    port = 80
}

#create app load balancer listeners
resource "aws_lb_listener" "alb-listeners" {
    load_balancer_arn = "${aws_lb.alb.arn}"
    port = "80"

    default_action {
      
      target_group_arn = "${aws_lb_target_group.alb-group.arn}" #listens to port 80 to the target group resourcec
      type = "forward"
    }
  
}
#create listener rule for the app load balancer
resource "aws_lb_listener_rule" "alb-rule" {
    listener_arn = "${aws_lb_listener.alb-listeners.arn}"
    priority = 100
    action {
      type = "forward"
      target_group_arn = "${aws_lb_target_group.alb-group.arn}"
    }
    condition {
        path_pattern {
            values = ["/static/*"]
    }
  }
  lifecycle {
    create_before_destroy = true
  }
}