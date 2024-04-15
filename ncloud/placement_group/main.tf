resource "ncloud_placement_group" "placement_group" {
  name                 = var.name
  placement_group_type = var.placement_group_type
}