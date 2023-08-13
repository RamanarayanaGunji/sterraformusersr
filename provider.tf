terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
    backend "s3" {
      bucket = "my-bucket"
      key    = "information"
      region = "us-east-1"
      dynamodb_table = "ram-dynamo"
    }


}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}