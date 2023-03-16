terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
 
provider "aws" {
  alias = "default"
  region = "us-west-2"
}
 
resource "aws_s3_bucket" "bucket" {
  bucket = "toshi-terraform-drift-demo"
}
