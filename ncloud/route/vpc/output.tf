output "id" {
  description = "The ID of Route."
  value       = ncloud_route.route.id
}

output "is_default" {
  description = "Whether is default or not by Route table creation."
  value       = ncloud_route.route.is_default
}

output "vpc_no" {
  description = "The ID of the associated VPC."
  value       = ncloud_route.route.vpc_no
}