resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = var.aws_subnet_availability_zone

  tags = {
    Name = "${var.vpc_name}-subnet"
  }
}
