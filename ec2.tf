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

resource "aws_instance" "ec2-2" {
    tags = {
        Name = "Vpc-instance"
    }
    ami = "ami-068c0051b15cdb816"
    instance_type = "t3.micro"
    subnet_id = aws_subnet.subnet-1.id
    availability_zone = "us-east-1a"
    root_block_device {
        volume_size = 8
    }
}
