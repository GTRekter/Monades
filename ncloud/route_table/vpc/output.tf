output "id" {
  description = "The ID of the Route table."
  value       = ncloud_route_table.route_table.id
}

output "route_table_no" {
  description = "The ID of the Route table. (It is the same result as id)"
  value       = ncloud_route_table.route_table.route_table_no
}

output "is_default" {
  description = "Whether is default or not by VPC creation."
  value       = ncloud_route_table.route_table.is_default
}