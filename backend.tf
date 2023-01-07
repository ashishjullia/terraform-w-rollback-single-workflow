terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "tf-test-s3-ashish"
    key    = "terraform.tfstate"
    region = "us-east-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "tfstate-tf-test-s3-ashish"
    encrypt        = true
  }
}
