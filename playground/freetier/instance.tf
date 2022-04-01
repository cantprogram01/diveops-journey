resource "aws_instance" "sample" {
    ami = "ami-026a2c62c35267e08"
    instance_type = "t2.micro"

    #the vpc subnet "10.0.1.0/24"
    subnet_id = "subnet-01bfd661c0885e1fa"

    #the security group
    vpc_security_group_ids = "sg-07a45b270b6fd7bd8"

    #the public SSH key
    key_name = "${aws_key_pair.myrsa.key_name}"
    # depends_on = [aws_internet_gateway.main-gw] #this will prevent the error when trying to destroy the gateway due to dependency
    #role:
    # iam_instance_profile = aws_iam_instance_profile.s3-instance-profile.name

}
