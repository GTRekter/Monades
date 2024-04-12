output "id" {
  description = "The ID of the Placement group."
  value       = ncloud_placement_group.placement_group.id
}

output "placement_group_no" {
  description = "The ID of the Placement group. (It is the same result as id)"
  value       = ncloud_placement_group.placement_group.placement_group_no
}