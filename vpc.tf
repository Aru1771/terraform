resource "aws_vpc" "vpc-1" {
tags = {
    Name = "vpc-1"
}
cidr_block = "10.0.0.0/16"
instance_tenancy = "default"
enable_dns_hostnames = "true"
}


resource "aws_subnet" "subnet-1" {
    vpc_id = aws_vpc.vpc-1.id
    tags = {
        Name = "Public-subnet"
    }
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
}


resource "aws_internet_gateway" "ig-1" {
    tags = {
        Name = "ig-1"
    }
    vpc_id = aws_vpc.vpc-1.id
}

resource "aws_route_table" "rt-1" {
    tags = {
        Name = "rt-1"
    }
    vpc_id = aws_vpc.vpc-1.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.ig-1.id
    }
}
