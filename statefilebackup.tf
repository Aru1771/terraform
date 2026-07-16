terraform {
  backend "s3" {
    bucket         = "my-bucket-972912397375-us-east-1-an"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}