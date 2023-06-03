resource "aws_instance" "esgi_instance" {
  ami                         = "ami-01dd271720c1ba44f"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.ssh_key.key_name
  subnet_id                   = aws_subnet.esgisub.id
  vpc_security_group_ids      = [aws_security_group.esgi_sg.id]
  associate_public_ip_address = true

  provisioner "file" {

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa.pub")
      timeout     = "1m"
      agent       = false
      host        = self.public_ip
    }

    source      = ""
    destination = "/tmp/"

  }

  provisioner "remote-exec" {

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
      timeout     = "1m"
      agent       = false
      host        = self.public_ip
    }

    inline = [
      "sudo apt update",
      "sudo apt -Y upgrade",
      "sudo apt-get -y install docker.io",
      "sudo wget https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -O /usr/local/bin/docker-compose",
      "sudo chmod +x /usr/local/bin/docker-compose",
      "cd /tmp/",
      "sudo docker-compose up -d"
    ]
  }
}
