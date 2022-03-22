resource "aws_instance" "sample" {
    ami = "ami-026a2c62c35267e08"
    instance_type = "t2.micro"
}