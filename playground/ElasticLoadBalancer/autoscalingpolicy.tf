#create the policy when autoscale is triggered
resource "aws_autoscaling_policy" "scaleup-policy" {
  name                   = "scaleup-policy"
  autoscaling_group_name = aws_autoscaling_group.autoscaling-group.name #which group will autoscale
  adjustment_type        = "ChangeInCapacity"                           #what will change when autoscale activates (CPU SIZE)
  scaling_adjustment     = "1"                                          #how much it will autoscale
  cooldown               = "300"                                        #it will stop autoscaling for 300 seconds
  policy_type            = "SimpleScaling"

}

#create the policy when autoscale is triggered
resource "aws_autoscaling_policy" "scaledown-policy" {
  name                   = "scaledown-policy"
  autoscaling_group_name = aws_autoscaling_group.autoscaling-group.name #which group will autoscale
  adjustment_type        = "ChangeInCapacity"                           #what will change when autoscale activates (CPU SIZE)
  scaling_adjustment     = "-1"                                         #how much it will autoscale
  cooldown               = "300"                                        #it will stop autoscaling for 300 seconds
  policy_type            = "SimpleScaling"

}
