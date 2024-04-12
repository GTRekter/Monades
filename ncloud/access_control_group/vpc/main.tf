resource "ncloud_access_control_group" "access_control_group" {
  name        = var.name
  description = var.description
  vpc_no      = var.vpc_no
}