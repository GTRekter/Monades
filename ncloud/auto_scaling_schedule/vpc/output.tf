output "id" {
  description = "The ID of Auto Scaling Schedule."
  value       = ncloud_auto_scaling_schedule.auto_scaling_schedule.id
}

output "name" {
  description = "The ID of Auto Scaling Schedule (It is the same result as id)."
  value       = ncloud_auto_scaling_schedule.auto_scaling_schedule.name
}