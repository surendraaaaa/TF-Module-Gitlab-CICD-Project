output "public_ip" {
    value = module.ec2.public_ip
}

output "private_ip" {
    value = module.ec2.private_ip
}

output "public_dns" {
    value = module.ec2.public_dns
}

output "instance_name" {
    value = module.ec2.instance_name
}

output "instance_state" {
    value = module.ec2.instance_state
}