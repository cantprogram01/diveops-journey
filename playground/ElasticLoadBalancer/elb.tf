resource "aws_elb" "my-elb" {
    name = "my-elb"
    subnets = ["${aws_subnet.main-public-1.id}", "${aws_subnet.main-public-2.id}"]
    security_groups = ["${aws_security_group.allow-elb-ports.id}"]
    listener {
      instance_port = 80
      instance_protocol = "http"
      lb_port = 80
      lb_protocol = "http"
    }
    health_check {
      healthy_threshold = 2
      unhealthy_threshold = 2
      timeout = 3
      target = "HTTP:80/"
      interval = 30
    }
    # instances = ["${aws_autoscaling_group.autoscaling-group.id}"] # you can also attach an ELB to an autoscaling group NOTE: 
    #NO NEED TO ATTACH THE INSTANCE INSIDE THE aws_elb block, SINCE load_balancers = aws_elb.*.name is already declared on the autoscaling group block
    cross_zone_load_balancing = true
    connection_draining = true
    connection_draining_timeout = 400
    tags = {
        Name = "my-elb"
    }
}
