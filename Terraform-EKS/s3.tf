resource "aws_s3_bucket" "vivi-mario-bucket" {
  bucket = "vivi-mario-bucket"
  }

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.vivi-mario-bucket.id 
  versioning_configuration {
    status = "Enabled"
  }
}