variable "name" {
  description = "Name of the Security group"
  type = string
}

variable "description" {
    description = "description for sg"
    type = string
  
}

variable "vpc_id" {
    description = "vpc id"
    type = string
  
}

variable "ingress_rules" {
    description = "list of ingress rules"
    type = list(object({
        from_port = number
        to_port = number
        protocol = string
        cidr_blocks = list(string)
    }))
    default = []

  
}

variable "egress_rules" {
  description = "List of egress rules"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [{
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }]
}