provider "aws" {
  region = "us-west-2" 
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "ExampleBucket"
    Environment = "Dev"
  }
}
