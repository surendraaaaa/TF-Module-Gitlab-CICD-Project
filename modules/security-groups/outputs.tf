output "security_group_name" {
    value = aws_security_group.my_security_group.name
}

output "security_group_ids" {
  value = [aws_security_group.my_security_group.id]  # Wrap in list
}
