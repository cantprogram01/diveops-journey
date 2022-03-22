terraform {
    backend "s3" {
        bucket = "my-tf-example-bucket"
        key = "tf/tfstate"
        region = "us-east-1"
    }
}