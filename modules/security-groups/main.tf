resource aws_security_group "my_security_group" {

        vpc_id = var.vpc_id
        name = "my_security_group"
        description = "this is security group exposed to users"

        ingress {
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "SSH port"
        }

        ingress {
            from_port = 80
            to_port = 80
            protocol = "tcp" 
            cidr_blocks = ["0.0.0.0/0"]
            description = "HTTP port"
        }

        ingress {
            from_port = 443
            to_port = 443
            protocol = "tcp" 
            cidr_blocks = ["0.0.0.0/0"]
            description = "HTTPS port"
        }

        egress {
            from_port = 0
            to_port = 0
            protocol = "-1" 
            cidr_blocks = ["0.0.0.0/0"]
            description = "HTTPS port"
        }
}


