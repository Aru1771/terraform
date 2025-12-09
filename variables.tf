variable "name" {
type = string
default = "minikube"
}

variable "ami_id" {
type = string
default = "ami-068c0051b15cdb816"
}

variable "itype" {
type = string
default = "m7i-flex.large"
}

variable "sg" {
type = string
default = "aws_security_group.sg-1.id"
}

variable "size" {
type = number
default = 25
}

variable "key" {
type = string
default = "my-key"
}
