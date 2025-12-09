provider "aws" {
region = "us-east-1"
access_key = ""
secret_key = ""
}

resource "aws_instance" "ec2-1" {
tags = {
Name = "minikube"
}
ami = "ami-068c0051b15cdb816"
instance_type = "m7i-flex.large"
vpc_security_group_ids = []
root_block_storage {
volume_size = 30
}
}
