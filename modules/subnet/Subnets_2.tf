resource "aws_subnet" "subnet_2" {
    vpc_id = var.vpc_id
    cidr_block = var.cidr_block_2
    availability_zone = var.availability_zone_2
    tags = {
        Name = var.subnet_name_2
    }
}