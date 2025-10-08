# this is root module
# when you want to use value of one module to another module first you will call that value as outout in one module and then call it in varibel in another module.

# vpc module

 module "vpc" {
    source = "./modules/vpc"
    }

# security group module

module "security_group" {
    source = "./modules/security-groups"
    vpc_id = module.vpc.vpc_id
    }



 module "ec2" {
    source = "./modules/ec2"
    vpc_id = module.vpc.vpc_id
    subnet_id = module.vpc.subnet_id
    security_group_ids = module.security_group.security_group_ids
    ami_id = "ami-0cfde0ea8edd312d4"
    instance_type = "t3.micro"
    block_storage = 10
    instance_name = "my-TFmodule-ec2"

    }
