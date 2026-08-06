resource "aws_s3_bucket" "my_tf_s3_bucket" {

    bucket =  var.bucket
    region = var.region
    bucket_namespace = var.bucket_namespace
    bucket_type = var.bucket_type

    tags = {
        Name = var.bucket_name
        env = var.env

    }

    object_ownership = var.object_ownership

    block_public_acls = var.block_public_acls

    bucket_versioning {
        enabled = var.versioning
    }

    encryption {
        algorithm = var.encryption_algorithm
    }

    bucket_key_enabled = var.bucket_key_enabled



}