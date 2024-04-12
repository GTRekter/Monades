resource "ncloud_auto_scaling_policy" "auto_scaling_policy" {
  name = var.name
  adjustment_type_code = var.adjustment_type_code
  scaling_adjustment = var.scaling_adjustment
  cooldown = var.cooldown
  min_adjustment_step = var.min_adjustment_step
  auto_scaling_group_no = var.auto_scaling_group_no
}