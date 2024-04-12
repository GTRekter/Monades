resource "ncloud_auto_scaling_schedule" "auto_scaling_schedule" {
  name                  = var.name
  desired_capacity      = var.desired_capacity
  min_size              = var.min_size
  max_size              = var.max_size
  start_time            = var.start_time
  end_time              = var.end_time
  recurrence            = var.recurrence
  auto_scaling_group_no = var.auto_scaling_group_no
  time_zone             = var.time_zone
}