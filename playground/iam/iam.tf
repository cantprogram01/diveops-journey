resource "aws_iam_role" "s3-role" {
    name = "s3-role"
    assume_role_policy = jsonencode(
    {
        "Version": "2012-10-17",
        "Statement":[
            {
                "Action":"sts:AssumeRole",
                "Principal":{
                    "Service":"ec2.amazonaws.com"
                },
                "Effect":"Allow",
                "Sid":""
            }
        ]
    })
}

resource "aws_iam_role_policy" "s3-bucket-role" {
    name = "s3-bucket-role"
    role = "${aws_iam_role.s3-role.id}"
    policy = jsonencode(
    {
        "Version":"2012-10-17",
        "Statement":[
            {
                "Effect":"Allow",
                "Action":[
                    "s3:*"
                ],
                "Resource":[
                    "arn:aws:s3:::s3-bucket-win64",
                    "arn:aws:s3:::s3-bucket-win64/*"
                ]
            }
        ]
    })
  
}

resource "aws_iam_instance_profile" "s3-instance-profile" {
    name = "s3-insntace-profile"
    role = aws_iam_role.s3-role.name
  
}

# resource "aws_iam_group" "devops-admin" {
#     name = "devops-admin"
  
# }

# resource "aws_iam_policy_attachment" "devops-attach" {
#     name = "devops-attach"
#     groups = ["${aws_iam_group.devops-admin.name}"]
#     policy_arn = "arn:aws:iam::aws:policy/job-function/SystemAdministrator"
  
# }

# resource "aws_iam_user" "arwin" {
#     name = "arwin"
  
# }
# resource "aws_iam_user" "vincent" {
#     name = "vincent"
  
# }

# resource "aws_iam_group" "terraform-admin" {
#     name      = "terraform-admin"
# }

# resource "aws_iam_group_membership" "group-members1" {
#     name = "test.group1"
#     users = ["${aws_iam_user.arwin.name}","${aws_iam_user.vincent.name}","${aws_iam_user.terraform.name}"]
#     group = aws_iam_group.devops-admin.name
# }

# resource "aws_iam_group_membership" "group-members2" {
#     name = "test.group2"
#     users = ["${aws_iam_user.arwin.name}","${aws_iam_user.vincent.name}","${aws_iam_user.terraform.name}"]
#     group = aws_iam_group.terraform-admin.name
# }


# resource "aws_iam_group" "secondary-admin" {
#     name = "secondary-admin"
  
# }

# resource "aws_iam_user" "terraform" {
#     name = "terraform"
#     force_destroy = true
# }

# resource "aws_iam_group_policy" "secondary-admin-policy" {
#     name = "secondary-admin-policy"
#     group = "${aws_iam_group.secondary-admin.name}"
#     policy = jsonencode({
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Effect": "Allow",
#             "Action": "*",
#             "Resource": "*"
#         },
#     ]
#     })
# }