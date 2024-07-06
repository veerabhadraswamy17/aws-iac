# Configure the AWS provider

terraform {
    required_providers {
      aws ={
        source = "hashicorp/aws"
        version = "5.0"
      }
    }
    backend "s3" {
    }

}
provider "aws" {
  region = "us-west-2" # specify your preferred region
}