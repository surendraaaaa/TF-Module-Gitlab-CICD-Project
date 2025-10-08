output "public_ip" {
  value = aws_instance.this.public_ip
}

output "private_ip" {
  value = aws_instance.this.private_ip
}

output "public_dns" {
  value = aws_instance.this.public_dns
}

output "instance_state" {
  value = aws_instance.this.instance_state
}

