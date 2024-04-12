output "id" {
  description = "The ID of Network Interface."
  value       = ncloud_network_interface.network_interface.id
}

output "network_interface_no" {
  description = "The ID of Network Interface. (It is the same result as id)"
  value       = ncloud_network_interface.network_interface.network_interface_no
}

output "status" {
  description = "The status of Network Interface."
  value       = ncloud_network_interface.network_interface.status
}

output "instance_type" {
  description = "Type of server instance."
  value       = ncloud_network_interface.network_interface.instance_type
}

output "is_default" {
  description = "Whether is default or not by Server instance creation."
  value       = ncloud_network_interface.network_interface.is_default
}