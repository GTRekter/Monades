resource "ncloud_network_acl_deny_allow_group" "network_acl_deny_allow_group" {
  vpc_no      = var.vpc_no
  name        = var.name
  description = var.description
  ip_list     = var.ip_list
}