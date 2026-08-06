variable "bucket" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "region" {
  description = "The AWS region where the S3 bucket will be created"
  type        = string
}

variable "bucket_namespace" {
  description = "The namespace for the S3 bucket"
  type        = string
}

variable "bucket_type" {
  description = "The type of the S3 bucket"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "env" {
  description = "The environment for the S3 bucket"
  type        = string
}

variable "object_ownership" {
  description = "The object ownership setting for the S3 bucket"
  type        = string
}

variable "block_public_acls" {
  description = "Whether to block public ACLs for the S3 bucket"
  type        = bool
}

variable "versioning" {
  description = "Whether to enable versioning for the S3 bucket"
  type        = bool
}

variable "encryption_algorithm" {
  description = "The encryption algorithm for the S3 bucket"
  type        = string
}

variable "bucket_key_enabled" {
  description = "Whether to enable bucket key for the S3 bucket"
  type        = bool
}

