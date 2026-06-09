module "ec2_instance" {
    source = "./terraform/modules/ec2"
    ami_id = "ami-00e801948462f718a"
    instance_type = "t2.micro"
    root_volume_size = 10
    instance_count =1
    instance_name = "minikube"
    vpc_id = module.vpc.vpc-1.id
    subnet_id = module.subnets.subnet-1.id
    security_group_id = module.sg.sg-1.id

}

module "vpc" {
    source = "./terraform/modules/vpc"
    cidr_block = "10.0.0.0/16"
    vpc_name = "my-vpc"
    enable_dns_hostnames = "true"
}

module "subnet-1" {
    source = "./terraform/modules/subnet"
    vpc_id = module.vpc.vpc-1.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    subnet_name = "public-subnet-1"
}

module "subnet-2" {
    source = "./terraform/modules/subnet"
    vpc_id = module.vpc.vpc-1.id
    cidr_block_2 = "10.0.2.0/24"
    availability_zone_2 = "us-east-1b"
    subnet_name_2 = "public-subnet-2"
}




