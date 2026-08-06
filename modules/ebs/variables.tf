variable "availability_zone" {
    description = "The availability zone in which to create the EBS volume."
    type       = string
  
}

variable "size" {
    description = "The size of the EBS volume in GiB."
    type        = number
}

variable "type" {
    description = "The type of the EBS volume (e.g., gp2, io1, st1, sc1)."
    type        = string
}

variable "snapshot_id" {
    description = "The ID of the snapshot from which to create the EBS volume."
    type        = string
}

variable "iops" {
    description = "The number of IOPS to provision for the EBS volume (only applicable for certain volume types)."
    type        = number
}

variable "throughput" {
    description = "The throughput to provision for the EBS volume in MiB/s (only applicable for certain volume types)."
    type        = number
}

variable "encrypted" {
    description = "Whether the EBS volume should be encrypted."
    type        = bool
}

variable "volume_name" {
    description = "The name of the EBS volume."
    type        = string
}

variable "volume_count" {
    description = "The number of EBS volumes to create."
    type        = number
}

