resource "aws_instance" "ec2-1" {
tags = {
Name = "minikube"
}
ami = "ami-068c0051b15cdb816"
instance_type = "m7i-flex.large"
vpc_security_group_ids = [aws_security_group.sg-1.id]
root_block_device {
volume_size = 30
}
}
