resource "aws_key_pair" "myrsa" {
  key_name   = "myrsa"
  public_key = file("mykey.pub")

}