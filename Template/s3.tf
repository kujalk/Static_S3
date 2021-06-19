resource "aws_s3_bucket" "bucket" {
  bucket        = var.s3_bucket
  acl           = "public-read"
  force_destroy = true

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "aws_s3_bucket_object" "bucket_object" {
  key    = "index.html"
  bucket = aws_s3_bucket.bucket.id
  content = file("index.html")
  content_type = "text/html"
  force_destroy = true
}

resource "aws_s3_bucket_policy" "prod_website" {
  bucket = aws_s3_bucket.bucket.id
  policy = <<POLICY
{    
    "Version": "2012-10-17",    
    "Statement": 
    [ 
        {
            "Sid": "cloud-front-read-access",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${aws_s3_bucket.bucket.id}/*"
        }    
    ]
}
POLICY
}