resource "aws_ebs_volume" "k8s_ebs" {
    availability_zone = var.availability_zone
    size              = var.size
    type              = var.type
    snapshot_id      = var.snapshot_id
    iops             = var.iops
    throughput       = var.throughput
    encrypted        = var.encrypted
    tags = {
        Name = "${var.volume_name}-${count.index + 1}"
    }
    count = var.volume_count
  
}


