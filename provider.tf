terraform {

  backend "s3" {
    bucket         = "tf-test-s3-ashish"
    key            = "tf-test-s3-ashish/gh-actions/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "tf-test-s3-ashish"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
