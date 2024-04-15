resource "ncloud_access_control_group_rule" "access_control_group_rule" {
  access_control_group_no = var.access_control_group_no

  dynamic "inbound" {
    for_each = var.inbound
    content {
      protocol                       = inbound.value.protocol
      ip_block                       = inbound.value.ip_block
      source_access_control_group_no = inbound.value.source_access_control_group_no
      port_range                     = inbound.value.port_range
      description                    = inbound.value.description
    }
  }
  dynamic "outbound" {
    for_each = var.outbound
    content {
      protocol                       = outbound.value.protocol
      ip_block                       = outbound.value.ip_block
      source_access_control_group_no = outbound.value.source_access_control_group_no
      port_range                     = outbound.value.port_range
      description                    = outbound.value.description
    }
  }
}