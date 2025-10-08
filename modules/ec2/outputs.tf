
output "public_ip" {
  value = aws_instance.my_instance.public_ip
}

output "private_ip" {
  value = aws_instance.my_instance.private_ip
}

output "public_dns" {
  value = aws_instance.my_instance.public_dns
}

output "instance_state" {
  value = aws_instance.my_instance.instance_state
}
