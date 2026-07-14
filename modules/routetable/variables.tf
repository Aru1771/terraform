variable "vpc_id" {

    description = " The ID of the VPC where the route table will be created."
    type = string
    
}

variable "route_table_name" {
    description = "The name of the route table."
    type = string
}

variable "route_table_cidr_block" {
    description = "The CIDR block for the route table."
    type = string
}

variable "route_table_gateway_id" {
    description = "The ID of the gateway for the route table."
    type = string
}