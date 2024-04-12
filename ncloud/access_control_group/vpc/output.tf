output "id" {
  description = "The ID of ACG(Access Control Group)"
  value       = ncloud_access_control_group.access_control_group.id
}

output "access_control_group_no" {
  description = "The ID of ACG(Access Control Group) (It is the same result as id)"
  value       = ncloud_access_control_group.access_control_group.access_control_group_no
}

output "is_default" {
  description = "Whether is default or not by VPC creation."
  value       = ncloud_access_control_group.access_control_group.is_default
}