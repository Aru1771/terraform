variable "vpc_id" {

    description = " The ID of the VPC where the route table will be created."
    type = string
    
}

variable "route_table_name" {
    description = "The name of the route table."
    type = string
}

variable "routes" {
  type = list(object({
    cidr_block = string
    gateway_id = string
  }))
}