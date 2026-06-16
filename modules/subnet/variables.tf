variable "cidr_block" {
    description = "the CIDR block for the subnet"
    type = string
}

variable "availability_zone" {
    description = "the availability zone for the subnet"
    type = string
}

variable "subnet_name" {
    description = "the name of the subnet"
    type = string
}
variable "vpc_id" {
    description = "the ID of the VPC to which the subnet belongs"
    type = string
}


variable "map_public_ip_on_launch" {
    description = "mapping public ip to ec2 automatically"
    type = bool
  
}