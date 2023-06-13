resource "aws_instance" "esgi_instance" {
  ami                         = "ami-01dd271720c1ba44f"
  instance_type               = var.ec2_size
  subnet_id                   = aws_subnet.subnet.id
  vpc_security_group_ids      = [aws_security_group.sgroup.id]
  associate_public_ip_address = true

  user_data = <<-EOL
  #!/bin/bash
  sudo -i -u ubuntu bash << EOF
    sudo apt update -y
    sudo apt install -y docker-compose

    git clone https://github.com/0xGuillaume/ProjetAnnuel23.git
    sudo nohup docker-compose -f ~/ProjetAnnuel23/containers/docker-compose.yml up

  EOF
  EOL
}
