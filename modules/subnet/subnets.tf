resource "aws_subnet" "subnet_1"{
    vpc_id = var.vpc_id
    cidr_block = var.cidr_block
    availability_zone = var.availability_zone
    tags = {
        Name = var.subnet_name
    }
    map_public_ip_on_launch = var.map_public_ip_on_launch

}

