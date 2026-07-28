output "vpc_id" {
    description = "The ID of the created VPC"
    value = aws_vpc.vpc_1.id
}

output "vpc_cidr_block" {
    description = "The CIDR block of the created VPC"
    value = aws_vpc.vpc_1.cidr_block
}

output "vpc_enable_dns_hostnames" {
    description = "Whether DNS hostnames are enabled in the created VPC"
    value = aws_vpc.vpc_1.enable_dns_hostnames
}



