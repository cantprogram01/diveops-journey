output "instance-ip" {
  value = aws_instance.sample.public_ip
}

# output "db-ip" {
#   value = aws_db_instance.arwindb.endpoint
# }