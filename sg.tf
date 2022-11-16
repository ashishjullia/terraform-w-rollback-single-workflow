resource "aws_security_group" "main" {
  name        = "main"
  description = "main"
  vpc_id      = aws_vpc.vpc.id
}

resource "aws_security_group_rule" "public_out" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id
}

resource "aws_security_group_rule" "public_in_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id
}

# resource "aws_security_group_rule" "public_in_all_udp" {
#   type = "ingress"
#   # as the script "https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh" defaults to 1194
#   from_port         = 1194
#   to_port           = 1194
#   protocol          = "udp"
#   cidr_blocks       = ["0.0.0.0/0"]
#   security_group_id = aws_security_group.main.id
# }
