resource "ncloud_network_interface" "network_interface" {
  subnet_no             = var.subnet_no
  access_control_groups = var.access_control_groups
  name                  = var.name
  description           = var.description
  private_ip            = var.private_ip
  server_instance_no    = var.server_instance_no
}