resource "aws_instance" "testing" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.testing.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  value = aws_instance.testing.public_ip
}

