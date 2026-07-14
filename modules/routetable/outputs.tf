output "route_table_id" {
  description = "The ID of the route table."
  value       = aws_route_table.prod_route_table.id

}

output "route_table_name" {
  description = "The name of the route table."
  value       = aws_route_table.prod_route_table.tags["Name"]

}

