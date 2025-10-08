# create 1 subnet
# create IGW
# create VPC

# VPC

resource aws_vpc "my_vpc" {

    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true

    tags = {

        Name = "cicdvpc"

    }
}

# punlic subnet

resource aws_subnet "public_subnet" {

    vpc_id = var.vpc_id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
    avaibaility_zone = "us-east-2a"

    tags = {

        Name = "public-subnet-1"

    }

}
