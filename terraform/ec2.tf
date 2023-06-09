resource "aws_instance" "esgi_instance" {
  ami                         = "ami-01dd271720c1ba44f"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.esgisub.id
  vpc_security_group_ids      = [aws_security_group.esgi_sg.id]
  associate_public_ip_address = true

  user_data = <<EOF
  #!/bin/bash
  touch /dev/test.txt
  EOF
}
