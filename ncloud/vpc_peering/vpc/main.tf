resource "ncloud_vpc_peering" "vpc_peering" {
  source_vpc_no       = var.source_vpc_no
  target_vpc_no       = var.target_vpc_no
  target_vpc_name     = var.target_vpc_name
  target_vpc_login_id = var.target_vpc_login_id
  name                = var.name
  description         = var.description
}