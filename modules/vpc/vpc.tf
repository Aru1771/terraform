resource "aws_vpc" "vpc_1" {
    cidr_block = var.cidr_block
    instance_tenancy = "default"
    enable_dns_hostnames = var.enable_dns_hostnames
    tags = {
        Name = var.vpc_name 
    }
}