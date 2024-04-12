output "id" {
  description = "The ID of Launch Configuration."
  value       = ncloud_launch_configuration.launch_configuration.id
}

output "launch_configuration_no" {
  description = "The ID of Launch Configuration (It is the same result as id)"
  value       = ncloud_launch_configuration.launch_configuration.launch_configuration_no
}