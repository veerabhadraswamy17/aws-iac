# Configure the AWS provider
terraform {
  backend "s3" {
    bucket         = "my-unique-harness-bucket-name"
    key            = "tfstate"
    region         = "us-west-2"
  }
}


provider "aws" {
  region = "us-west-2" # specify your preferred region
}