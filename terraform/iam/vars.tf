variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
# variable "RDS_PASSWORD" {}
# variable "RDS_USERNAME" {}

variable "AWS_REGION" {
  default = "us-east-1"
}
variable "AWS_ZONE" {
  type = map
  default = {
    "east1a" = "us-east-1a"
    "east1b" = "us-east-1b"
    "east1c" = "us-east-1c"
  }
}

# variable "INSTANCE_DEVICE_NAME" {
#   default = "/dev/xvdh"
# }