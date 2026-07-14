resource "aws_route_table" "prod_route_table" {
    
    vpc_id = var.vpc_id

    route = {
        cidr_block = var.route_table_cidr_block
        gateway_id = var.route_table_gateway_id
    }
    tags = {
        Name = var.route_table_name
    }


}