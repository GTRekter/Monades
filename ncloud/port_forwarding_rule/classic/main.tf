resource "ncloud_port_forwarding_rule" "port_forwarding_rule" {
  server_instance_no               = var.server_instance_no
  port_forwarding_external_port    = var.port_forwarding_external_port
  port_forwarding_internal_port    = var.port_forwarding_internal_port
  port_forwarding_configuration_no = var.port_forwarding_configuration_no
}