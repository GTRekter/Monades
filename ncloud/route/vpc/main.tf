resource "ncloud_route" "route" {
  route_table_no         = var.route_table_no
  destination_cidr_block = var.destination_cidr_block
  target_type            = var.target_type
  target_no              = var.target_no
  target_name            = var.target_name
}