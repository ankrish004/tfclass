provider "aws" {
  region =  "us-east-1"
}

locals {
  env = terraform.workspace
}

resource "aws_s3_bucket" "ank9918" {
    bucket =  "ank5352-${local.env}"
    acl = "private"
  
}

output "bucket_name" {
  value = aws_s3_bucket.ank9918.bucket
}
