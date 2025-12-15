resource "aws_instance" "ec2-1" {
tags = {
Name = var.name
}
ami = var.ami_id
instance_type = var.itype
key_name = var.key 
vpc_security_group_ids = [var.sg]
root_block_device {
volume_size = var.size
}
}

