resource "aws_s3_bucket" "this" {
  bucket = "haris-s3-bucket-example"

  tags = {
    Name        = "example-bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"
}
