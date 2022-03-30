#create the autoscaling group,  
resource "aws_autoscaling_group" "autoscaling-group" {
  name                      = "autoscaling-group"
  vpc_zone_identifier       = ["${aws_subnet.main-public-1.id}", "${aws_subnet.main-public-2.id}"] #setting up the IPs
  launch_configuration      = aws_launch_configuration.launch-config.name                          #linking the instance
  min_size                  = 2                                                                    #minimum size of instance
  max_size                  = 2                                                                    #maximum size of instance
  health_check_grace_period = 300
  health_check_type         = "ELB"
  force_delete              = true
  load_balancers = [aws_elb.my-elb.name]
  lifecycle {
    create_before_destroy = true
  }

  tag { #this will propagate the name of the server whenever it starts to autoscale
    key                 = "Name"
    value               = "ec2 instance"
    propagate_at_launch = true
  }
}

#create the cloudwatch that will trigger the autoscaling
resource "aws_cloudwatch_metric_alarm" "scaleup-cpu-alarm" {
  alarm_name          = "scaleup-cpu-alarm"
  alarm_description   = "cpu-alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold" #If CPU Util % is >= Threshold
  evaluation_periods  = "2"                             #how many evaluation period it will take before the alarm triggers
  metric_name         = "CPUUtilization"                #which utilization it will monitor
  namespace           = "AWS/EC2"
  period              = "120"     #if the threshold of of cpu usage reached 30% average for 120 seconds alarm will ttrigger
  statistic           = "Average" #avaraging cpu threshold
  threshold           = "30"      #maximum threshold % for the CPU util

  dimensions = {
    "AutoScalingGroupName" = "${aws_autoscaling_group.autoscaling-group.name}" #link this arlm to the autoscaling group
  }

  actions_enabled = true
  alarm_actions   = ["${aws_autoscaling_policy.scaleup-policy.arn}"] #if alarm triggers this policy arn will trigger and perform the set policy

}

#create the cloudwatch that will trigger the autoscaling
resource "aws_cloudwatch_metric_alarm" "scaledown-cpu-alarm" {
  alarm_name          = "scaledown-cpu-alarmm"
  alarm_description   = "scaledown-cpu-alarm"
  comparison_operator = "LessThanOrEqualToThreshold" #If CPU Util % is <= Threshold
  evaluation_periods  = "2"                          #how many evaluation period it will take before the alarm triggers
  metric_name         = "CPUUtilization"             #which utilization it will monitor
  namespace           = "AWS/EC2"
  period              = "120"     #if the threshold of of cpu usage reached 30% average for 120 seconds alarm will ttrigger
  statistic           = "Average" #avaraging cpu threshold
  threshold           = "30"      #maximum threshold % for the CPU util

  dimensions = {
    "AutoScalingGroupName" = "${aws_autoscaling_group.autoscaling-group.name}" #link this arlm to the autoscaling group
  }

  actions_enabled = true
  alarm_actions   = ["${aws_autoscaling_policy.scaledown-policy.arn}"] #if alarm triggers this policy arn will trigger and perform the set policy

}