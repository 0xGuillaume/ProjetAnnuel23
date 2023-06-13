output "ip_address_public" {
  value = aws_instance.esgi_instance.public_ip
}
