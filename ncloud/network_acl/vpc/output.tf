output "id" {
  description = "The ID of the Network ACL."
  value       = ncloud_network_acl.network_acl.id
}

output "network_acl_no" {
  description = "The ID of the Network ACL. (It is the same result as id)"
  value       = ncloud_network_acl.network_acl.network_acl_no
}

output "is_default" {
  description = "Whether is default or not by VPC creation."
  value       = ncloud_network_acl.network_acl.is_default
}