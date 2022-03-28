resource "aws_s3_bucket" "s3-bucket" {
    bucket = "mybucket-win64"
    tags = {
        Name = "mybucket-win64"
    }
  
}

resource "aws_s3_bucket_acl" "bucket-acl" {
    bucket = aws_s3_bucket.s3-bucket.id
    acl = "private"
  
}