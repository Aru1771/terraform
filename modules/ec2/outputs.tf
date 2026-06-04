output "instance_id" {
    description = "The ID of the created EC2 instance"
    value = aws_instance.k8s-1.id
}

output "instance_public_ip" {
    description = "The public IP address of the created EC2 instance"
    value = aws_instance.k8s-1.public_ip
}

output "instance_private_ip" {
    description = "The private IP address of the created EC2 instance"
    value = aws_instance.k8s-1.private_ip
}

