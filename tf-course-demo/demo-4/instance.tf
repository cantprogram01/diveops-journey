resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  value = aws_instance.example.public_ip
}

resource "aws_s3_bucket" "tf-state-bucket"{
  bucket = "tf-state"
}

# terraform {
#   backend "s3" {
#     bucket = "tf-state"
#     key    = "path/tf-state/"
#     region = "us-east-1"
#   }
# }