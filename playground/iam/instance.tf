resource "aws_instance" "sample" {
    ami = "ami-026a2c62c35267e08"
    instance_type = "t2.micro"

    #the vpc subnet "10.0.1.0/24"
    subnet_id = "${aws_subnet.main-public-1.id}"

    #the security group
    vpc_security_group_ids = ["${aws_security_group.allow-ssh.id}"]

    #the public SSH key
    key_name = "${aws_key_pair.myrsa.key_name}"
    depends_on = [aws_internet_gateway.main-gw] #this will prevent the error when trying to destroy the gateway due to dependency
    #role:
    iam_instance_profile = aws_iam_instance_profile.s3-instance-profile.name

}



# output "ec2-eip" {
#   value = aws_eip.test-eip.public_ip
# }

