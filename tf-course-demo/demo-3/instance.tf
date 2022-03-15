resource "aws_instance" "test" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.test.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  value = aws_instance.test.public_ip
}

