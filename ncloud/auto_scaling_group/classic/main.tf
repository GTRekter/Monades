resource "ncloud_auto_scaling_group" "auto_scaling_group" {
  name                      = var.name
  launch_configuration_no   = var.launch_configuration_no
  desired_capacity          = var.desired_capacity
  min_size                  = var.min_size
  max_size                  = var.max_size
  ignore_capacity_changes   = var.ignore_capacity_changes
  default_cooldown          = var.default_cooldown
  health_check_type_code    = var.health_check_type_code
  wait_for_capacity_timeout = var.wait_for_capacity_timeout
  health_check_grace_period = var.health_check_grace_period
  zone_no_list              = var.zone_no_list
}