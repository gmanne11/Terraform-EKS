resource "aws_s3_bucket" "vivimariobucket" {
  bucket = "vivimariobucket"
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.vivimariobucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.vivimariobucket.id
  versioning_configuration {
    status = "Enabled"
  }
}