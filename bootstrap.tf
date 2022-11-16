# resource "null_resource" "bootstrap" {
#   connection {
#     type = "ssh"
#     host = aws_instance.instance.public_ip
#     user = var.ec2_username
#     port = var.ssh_port
#     # private_key = file("${path.module}/${var.ssh_private_key_file}")
#     private_key = var.EC2_PRIVATE_KEY
#     # private_key = file("${path.module}/openvpn")
#     agent = false
#   }

#   provisioner "remote-exec" {
#     inline = [
#       # replace yum with apt-get, if debian flavor
#       "sudo yum update -y",
#       # var.script substitution was throwing unknown error, so direct url
#       "wget https://raw.githubusercontent.com/dumrauf/openvpn-install/master/openvpn-install.sh -O /tmp/openvpn-install.sh",
#       "chmod +x /tmp/openvpn-install.sh",
#       # yes '' | 
#       "sudo AUTO_INSTALL=y APPROVE_IP=${aws_instance.instance.public_ip} ENDPOINT=${aws_instance.instance.public_dns} /tmp/openvpn-install.sh",
#     ]
#   }
# }

# resource "null_resource" "openvpn_download_configurations_to_dropbox" {
#   depends_on = [null_resource.openvpn_bootstrap]
#   connection {
#     type = "ssh"
#     host = aws_instance.instance.public_ip
#     user = var.ec2_username
#     port = "22"
#     # private_key = file("${path.module}/${var.ssh_private_key_file}")
#     private_key = var.EC2_PRIVATE_KEY
#     # private_key = file("${path.module}/openvpn")
#     agent = false
#   }

#   provisioner "file" {
#     source      = "${path.module}/upload.py"
#     destination = "/tmp/upload.py"
#   }

#   provisioner "remote-exec" {
#     inline = [
#       # "chmod +x ~${var.ec2_username}/upload.py",
#       "chmod +x /tmp/upload.py",
#       "pip3 install six dropbox",
#       "DROPBOX_TOKEN=${var.DROPBOX_TOKEN} python3 /tmp/upload.py / /home/ec2-user/ --yes",
#     ]
#   }
# }
