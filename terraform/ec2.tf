resource "aws_instance" "esgi_instance" {
  ami                         = "ami-01dd271720c1ba44f"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.esgisub.id
  vpc_security_group_ids      = [aws_security_group.esgi_sg.id]
  associate_public_ip_address = true

  #user_data = data.cloudinit_config.foobar.rendered
  user_data = <<-EOL
  #!/bin/bash
  sudo -i -u ubuntu bash << EOF
    sudo apt update -y
    sudo apt install -y docker-compose

    mkdir ~/test
    touch ~/salut.txt
  EOF
  EOL
}
