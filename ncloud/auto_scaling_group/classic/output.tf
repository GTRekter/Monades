output "id" {
  description = "The ID of Auto Scaling Group."
  value       = ncloud_auto_scaling_group.auto_scaling_group.id
}

output "auto_scaling_group_no" {
  description = "The ID of Auto Scaling Group (It is the same result as id)"
  value       = ncloud_auto_scaling_group.auto_scaling_group.auto_scaling_group_no
}

output "server_instance_no_list" {
  description = "List of server instances belonging to Auto Scaling Group."
  value       = ncloud_auto_scaling_group.auto_scaling_group.server_instance_no_list
}