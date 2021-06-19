output "s3-endpoint" {
  value = aws_s3_bucket.bucket.website_endpoint
}