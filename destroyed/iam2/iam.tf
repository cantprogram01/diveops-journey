resource "aws_iam_user" "test" {
    name      = "test"
    path      = "/"
    force_destroy = true
}

# resource "null_resource" "remove-group" {
#   depends_on  = [aws_iam_group.grptest]
#   provisioner "local-exec" {
#     when    = "destroy"
#     command = "aws iam detach-group-policy --group-name grptest --policy-arn arn:aws:iam::aws:policy/AdministratorAccess"
#   }
# }

resource "aws_iam_group" "grptest" {
    name      = "grptest"
    path      = "/"
}
# resource "aws_iam_policy_attachment" "AdministratorAccess" {
#     # name = "AdministratorAccess"
#     # groups = ["${aws_iam_group.grptest.name}"]
#     # policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  
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