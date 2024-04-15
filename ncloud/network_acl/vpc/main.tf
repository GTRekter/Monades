resource "ncloud_network_acl" "network_acl" {
  vpc_no      = var.vpc_no
  name        = var.name
  description = var.description
}