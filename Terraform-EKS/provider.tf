provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "vivi-mario-bucket"
    key = "EKS/terraform.tfstate"
    region = "us-east-1"
  }
}