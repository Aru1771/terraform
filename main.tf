module "ec2_instance" {
    source = "./terraform/modules/ec2"
    ami_id = "ami-00e801948462f718a"
    instance_type = "t2.micro"
    volume_size = 10
    instance_count =1
    instance_name = "minikube"

}

module "vpc" {
    source = "./terraform/modules/vpc"
    cidr_block = "10.0.0.0/16"
}

module "subnet" {
    source = "./terraform/modules/subnet"
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-west-2a"
    subnet_name = "public-subnet-1"
}

module "subnet-2" {
    source = "./terraform/modules/subnet"
    cidr_block_2 = "10.0.2.0/24"
    availability_zone_2 = "us-west-2b"
    subnet_name_2 = "public-subnet-2"
}


