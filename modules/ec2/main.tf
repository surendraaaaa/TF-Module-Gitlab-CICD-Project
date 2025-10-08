resource "aws_key_pair" "my_key" {
  key_name   = "my-module-key"
  public_key = file("./modules/ec2/my_key.pub")
}

resource "aws_instance" "my_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    key_name = aws_key_pair.my_key.key_name
    security_group_ids = var.security_group_ids

    root_block_device {
        volume_size = var.block_storage
        volume_type = "gp3"
    }

    tags = {
        Name = var.instance_name
    }

}
