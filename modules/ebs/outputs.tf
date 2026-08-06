output "volume_ids" {
    value = aws_ebs_volume.k8s_ebs[*].id
    description = "The IDs of the created EBS volumes."
}

output "volume_arns" {
    value = aws_ebs_volume.k8s_ebs[*].arn
    description = "The ARNs of the created EBS volumes."
}

