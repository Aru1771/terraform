variable "ami_id" {
    description = "The AMI ID for the EC2 instance"
    type = string
}

variable "instance_type" {
    description = "The instance type for the EC2 instance"
    type = string
}


variable "root_volume_size" {
    description = "The size of the root volume in GB"
    type = number
}

variable "security_group_id" {
    description = "The ID of the security group to associate with the EC2 instance"
    type = string
}

variable "instance_count" {
    description = "The number of EC2 instances to launch"
    type = number

}

variable "instance_name" {
    description = "The name tag for the EC2 instance"
    type = string
}

variable "subnet_id" {
    description = "The ID of the subnet to launch the EC2 instance in"
    type = string
}