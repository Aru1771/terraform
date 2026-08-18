resource "aws_instance" "terraform_ec2" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = "${var.instance_name}-${count.index + 1}" 
    }
    root_block_device {
        volume_size = var.root_volume_size
    }
    vpc_security_group_ids = [var.security_group_id]
    subnet_id = var.subnet_id
    key_name = var.key_name
    count = var.instance_count
    associate_public_ip_address = var.associate_public_ip
}

