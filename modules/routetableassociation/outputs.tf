output "route_table_association_id" {
  description = "The ID of the route table association"
  value       = aws_route_table_association.subnet_1.id
}

output "subnet_id" {
  description = "The associated subnet ID"
  value       = aws_route_table_association.subnet_1.subnet_id
}

output "route_table_id" {
  description = "The associated route table ID"
  value       = aws_route_table_association.subnet_1.route_table_id
}