resource "aws_s3_bucket" "test_bucket" {
  bucket = var.bucket_name
}
resource "aws_s3_bucket_object" "src_folder" {
  bucket = aws_s3_bucket.test_bucket.id
  key    = "src/"
}

resource "aws_s3_bucket_object" "images_folder" {
  bucket = aws_s3_bucket.test_bucket.id
  key    = "images/"
}