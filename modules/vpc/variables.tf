variable "cidr_block" {
    description = "the CIDR block for the VPC"
    type = string

}

variable "vpc_name" {
    description = "the name of the VPC"
    type = string
}

variable "enable_dns_hostnames" {
    description = "whether to enable DNS hostnames in the VPC"
    type = bool
}
