resource "aws_vpc" "main" {
  name       = var.vpc_name
  cidr_block = "10.0.0.0/16"
}
