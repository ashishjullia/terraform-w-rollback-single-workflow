# data "aws_ami" "ami" {
#   most_recent = true

#   filter {
#     name   = "name"
#     # https://cloud-images.ubuntu.com/locator/
#     values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-*"]
#   }

#   filter {
#     name   = "architecture"
#     values = ["x86_64"]
#   }

#   filter {
#     name   = "block-device-mapping.volume-type"
#     values = ["gp2"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   # https://ubuntu.com/server/docs/cloud-images/amazon-ec2
#   owners = ["099720109477"]
# }

# AMAZON AMI
data "aws_ami" "ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "block-device-mapping.volume-type"
    values = ["gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}
