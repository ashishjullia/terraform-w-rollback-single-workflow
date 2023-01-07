# variable "ami" {
#   type    = string
#   default = "ami-08c40ec9ead489470"
# }

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

# variable "ssh_key_name" {
#   type    = string
#   default = "test-key"
# }

# variable "ssh_private_key_file" {
#   default = "test"
# }

variable "ec2_username" {
  default = "ec2-user"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_subnet_availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "ec2_instance" {
  type    = string
  default = ""
}

variable "vpc_name" {
  type    = string
  default = ""
}

variable "ssh_port" {
  type    = string
  default = "22"
}

variable "instance_count" {
  type    = number
  default = 1
}

# variable "EC2_PRIVATE_KEY" {
#   type = string
#   # default = "value"
# }

# variable "EC2_PUBLIC_KEY" {
#   type = string
#   # default = "value"
# }

# variable "DROPBOX_TOKEN" {
#   type = string
# }
