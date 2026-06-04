resource "aws_instance" "k8s-1" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = var.instance_name
    }
    root_block_device {
        volume_size = var.root_volume_size
    }
    
    subnet_id = aws_subnet.subnet-1.id

    vpc_security_group_ids = [aws_security_group.sg-1.id]
    count = var.instance_count
}

