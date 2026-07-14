resource "aws_route_table" "prod_route_table" {
    
    vpc_id = var.vpc_id

      tags = {
    Name = var.route_table_name
  }


    dynamic "route" {
    for_each = var.routes

    content {
      cidr_block = route.value.cidr_block
      gateway_id = route.value.gateway_id
    }
  }
}