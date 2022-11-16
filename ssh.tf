# resource "aws_key_pair" "ssh-key" {
#   key_name = "ssh-key"
#   public_key = var.public_key
# public_key = file("${path.module}/openvpn.pub")
#   public_key = var.EC2_PUBLIC_KEY
# }
