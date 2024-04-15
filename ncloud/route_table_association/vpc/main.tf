resource "ncloud_route_table_association" "route_table_association" {
  route_table_no = var.route_table_no
  subnet_no      = var.subnet_no
}