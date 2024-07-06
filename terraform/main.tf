# Configure the AWS provider
provider "aws" {
  region = "us-west-2" # specify your preferred region
}

# Create an S3 bucket
resource "aws_s3_bucket" "my_harness_tfstate_bucket" {
  bucket = "my-unique-harness-bucket-name" # specify a unique bucket name
  
  tags = {
    Name        = "harness tf bucket"
    Environment = "Harness tf state file"
  }
}