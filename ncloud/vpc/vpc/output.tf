output "id" {
  description = "The ID of VPC."
  value       = ncloud_vpc.vpc.id
}

output "vpc_no" {
  description = "The ID of VPC. (It is the same result as id)"
  value       = ncloud_vpc.vpc.vpc_no
}

output "default_network_acl_no" {
  description = "The ID of the network ACL created by default on VPC creation."
  value       = ncloud_vpc.vpc.default_network_acl_no
}

output "default_access_control_group_no" {
  description = "The ID of the ACG created by default on VPC creation."
  value       = ncloud_vpc.vpc.default_access_control_group_no
}

output "default_public_route_table_no" {
  description = "The ID of the Public Route Table created by default on VPC creation."
  value       = ncloud_vpc.vpc.default_public_route_table_no
}

output "default_private_route_table_no" {
  description = "The ID of the Private Route Table created by default on VPC creation."
  value       = ncloud_vpc.vpc.default_private_route_table_no
}