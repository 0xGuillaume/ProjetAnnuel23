output "ip_address_public" {
  value = aws_eip.ip.public_ip
}
