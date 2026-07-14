module "ec2_instance" {
    source = "./modules/ec2"
    ami_id = "ami-00e801948462f718a"
    instance_type = "t2.micro"
    root_volume_size = 10
    instance_count =1
    instance_name = "minikube"
    subnet_id = module.subnet_1.subnet_id
    security_group_id = module.sg.security_group_id

}

module "vpc" {
    source = "./modules/vpc"
    cidr_block = "10.0.0.0/16"
    vpc_name = "my_vpc"
    enable_dns_hostnames = true
}

module "subnet_1" {
    source = "./modules/subnet"
    vpc_id = module.vpc.vpc_id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
    subnet_name = "public_subnet_1"
}

module "subnet_2" {
    source = "./modules/subnet"
    vpc_id = module.vpc.vpc_id 
    cidr_block = "10.0.2.0/24"
    availability_zone  = "us-east-1b"
    map_public_ip_on_launch = false
    subnet_name  = "private_subnet_2"
}



module "sg" {
  source = "./modules/sg"

  name        = "k8s_sg-1"
  description = "Security group for Kubernetes cluster"
  vpc_id      = module.vpc.vpc_id

  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

module "routetable" {
  source = "./modules/routetable"
  vpc_id = module.vpc.vpc_id
  route_table_name = "public_route_table"
  route_table_cidr_block = "0.0.0.0/0"
  route_table_gateway_id = module.igw.igw_id
}


module "igw" {
  source = "./modules/igw"
  vpc_id = module.vpc.vpc_id
  igw_name = "my_igw"
}
