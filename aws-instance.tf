# placeholder (might be required in future)
# data "template_file" "default" {
#   template = file("${path.module}/script.sh")
# }

resource "aws_instance" "instance" {
  ami                         = data.aws_ami.ami.id
  instance_type               = "t2.micro"
  # associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.main.id]
  subnet_id              = aws_subnet.subnet.id

  # key_name = "ssh-key"

  root_block_device {
    volume_size = 30
  }

  # placeholder (might be required in future)
  # user_data = file("${path.module}/script.sh") 
  # user_data = data.template_file.default.rendered

  tags = {
    Name = "modified instance"
  }
}
