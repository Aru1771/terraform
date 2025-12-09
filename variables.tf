variables "name" {
type = string
default = "minikube"
}

variables "ami_id" {
type = string
default = "ami-068c0051b15cdb816"
}

variables "itype" {
type = string
default = "m7i-flex.large"
}

variables "sg"{
type = string
default = "aws_security_group.sg-1.id"
}

variables "size" {
type = number
default = 25
}

variables "key" {
type = string
default = "my-key"
}
