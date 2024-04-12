output "id" {
  description = "The ID of Port forwarding rule.port_forwarding_configuration_no:zone_no:port_forwarding_external_port"
  value       = ncloud_port_forwarding_rule.port_forwarding_rule.id
}

output "port_forwarding_public_ip" {
  description = "Port forwarding Public IP"
  value       = ncloud_port_forwarding_rule.port_forwarding_rule.port_forwarding_public_ip
}

output "zone" {
  description = "Zone code"
  value       = ncloud_port_forwarding_rule.port_forwarding_rule.zone
}