output "id" {
  description = "The ID of listener."
  value       = ncloud_load_balancer_listener_vpc.listener_vpc.id
}

output "listener_no" {
  description = "The ID of listener (It is the same result as id)"
  value       = ncloud_load_balancer_listener_vpc.listener_vpc.listener_no
}

output "rule_no_list" {
  description = "The list of listener rule number."
  value       = ncloud_load_balancer_listener_vpc.listener_vpc.rule_no_list
}