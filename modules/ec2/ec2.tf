resource "aws_instance" "k8s_1" {
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
    count = var.instance_count
}

