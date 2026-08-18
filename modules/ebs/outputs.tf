output "volume_ids" {
    value = aws_ebs_volume.terraform_ebs_volume[*].id
    description = "The IDs of the created EBS volumes."
}

output "volume_arns" {
    value = aws_ebs_volume.terraform_ebs_volume[*].arn
    description = "The ARNs of the created EBS volumes."
}

