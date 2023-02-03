resource "aws_s3_bucket" "my-bucket-test1" {
  bucket = "foobar"
  acl    = "private"
}
