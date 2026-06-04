resource "aws_subnet" "subnet-1"{
    vpc_id = aws_vpc.vpc-1.id
    cidr_block = var.cidr_block
    availability_zone = var.availability_zone
    tags = {
        Name = var.subnet_name
    }
    
}

resource "aws_subnet" "subnet-2" {
    vpc_id = aws_vpc.vpc-1.id
    cidr_block = var.cidr_block_2
    availability_zone = var.availability_zone_2
    tags = {
        Name = var.subnet_name_2
    }
}

