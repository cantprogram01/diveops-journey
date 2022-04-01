provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  # region     = "us-east-1"
}

terraform {
  required_version = ">= 0.12"
}
