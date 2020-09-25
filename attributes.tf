provider "aws" {
  region  = "us-east-1"
  access_key = "*************"
  secret_key = "**************"
  version = "3.7"
}

resource "aws_eip" "my_eip" {
  vpc = true
  
}

output "eip" {
  value = aws_eip.my_eip.public_ip
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "test-terraform-attribute-demo-001"
}

output "mys3bucket" {
  value = aws_s3_bucket.my_s3_bucket.bucket_domain_name
}
