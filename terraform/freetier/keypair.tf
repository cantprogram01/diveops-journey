resource "aws_key_pair" "myrsa" {
  key_name   = "mykey"
  public_key = file("mykey.pub")

}