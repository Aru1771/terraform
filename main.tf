module "ebs_volume" {
    source = "./modules/ebs"
    availability_zone = "us-east-1a"
    size = 8
    type = "gp3"
    snapshot_id = ""
    iops = 3000
    throughput = 125
    encrypted = false
    volume_name = "my_ebs_volume"
    volume_count = 1
  
}
