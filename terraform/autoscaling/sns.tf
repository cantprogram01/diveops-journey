resource "aws_sns_topic" "cpu-sns" {
  name         = "cpu-sns"
  display_name = "Sample Instance will now autoscale"

} #email notif needs to be configured in AWS since TF is not supported yet

#attach the notification group for scaling up
resource "aws_autoscaling_notification" "scaleup-notif" {
  group_names = [aws_autoscaling_group.autoscaling-group.name]
  topic_arn   = aws_sns_topic.cpu-sns.arn
  notifications = [

    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR"
  ]

}

#attach the notification group for scaling down
resource "aws_autoscaling_notification" "scaledown-notif" {
  group_names = [aws_autoscaling_group.autoscaling-group.name]
  topic_arn   = aws_sns_topic.cpu-sns.arn
  notifications = [

    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR"
  ]

}