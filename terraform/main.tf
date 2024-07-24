# Configure the AWS provider
provider "aws" {
  region = "us-west-2" # specify your preferred region
}

# Create an S3 bucket
resource "aws_s3_bucket" "my_harness_tfstate_bucket" {
  bucket = var.s3-demo-bucket-name # specify a unique bucket name
  
  tags = {
    Name        = "harness demo bucket"
    Environment = var.s3-Env
  }
}