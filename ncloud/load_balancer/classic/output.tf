output "id" {
  description = "The ID of Load Balancer."
  value       = ncloud_load_balancer.load_balancer.id
}

output "instance_no" {
  description = "Load Balancer instance No"
  value       = ncloud_load_balancer.load_balancer.instance_no
}

output "virtual_ip" {
  description = "Virtual IP address"
  value       = ncloud_load_balancer.load_balancer.virtual_ip
}

output "create_date" {
  description = "Creation date of the Load Balancer instance"
  value       = ncloud_load_balancer.load_balancer.create_date
}

output "domain_name" {
  description = "Domain name"
  value       = ncloud_load_balancer.load_balancer.domain_name
}

output "instance_status_name" {
  description = "Load Balancer instance status name"
  value       = ncloud_load_balancer.load_balancer.instance_status_name
}

output "instance_status" {
  description = "Load Balancer instance status code"
  value       = ncloud_load_balancer.load_balancer.instance_status
}

output "instance_operation" {
  description = "Load Balancer instance operation code"
  value       = ncloud_load_balancer.load_balancer.instance_operation
}

output "is_http_keep_alive" {
  description = "Http keep alive value [true | false]"
  value       = ncloud_load_balancer.load_balancer.is_http_keep_alive
}

output "connection_timeout" {
  description = "Connection timeout"
  value       = ncloud_load_balancer.load_balancer.connection_timeout
}

output "load_balanced_server_instance_list" {
  description = "Load balanced server instance list"
  value       = ncloud_load_balancer.load_balancer.load_balanced_server_instance_list
}