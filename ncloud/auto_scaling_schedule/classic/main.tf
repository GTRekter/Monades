resource "ncloud_auto_scaling_schedule" "auto_scaling_schedule" {
  name = var.name
  desired_capacity = var.desired_capacity
  min_size = var.min_size
  max_size = var.max_size
  start_time = var.start_time
  end_time = var.end_time
  recurrence = var.recurrence
  auto_scaling_group_no = var.auto_scaling_group_no
}

variable "name" {
  description = "(Required) Auto Scaling Schedule name to create."
  type = string
}

variable "desired_capacity" {
  description = "(Required) The number of servers is adjusted according to the desired capacity value. Valid from 0 to 30."
  type = number
  validation {
    condition = var.desired_capacity >= 0 && var.desired_capacity <= 30
    error_message = "desired_capacity should be between 0 and 30"
  }
}

variable "min_size" {
  description = "(Required) The minimum size of the Auto Scaling Group. Valid from 0 to 30."
  type = number
  validation {
    condition = var.min_size >= 0 && var.min_size <= 30
    error_message = "min_size should be between 0 and 30"
  }
}

variable "max_size" {
  description = "(Required) The maximum size of the Auto Scaling Group. Valid from 0 to 30."
  type = number
  validation {
    condition = var.max_size >= 0 && var.max_size <= 30
    error_message = "max_size should be between 0 and 30"
  }
}

variable "start_time" {
  description = "(Optional) You can determine the date and time when the schedule first starts. If you don't enter recurrence, be sure to enter startTime. It cannot be duplicated with the startTime of another schedule and must be later than the current time, before endTime. Format : yyyy-MM-ddTHH:mm:ssZ format in UTC/KST only (for example, 2021-02-02T15:00:00+0900)."
  type = string
  default = null
  validation {
    condition = var.start_time == null || can(regex("^[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}Z$", var.start_time))
    error_message = "start_time should be in yyyy-MM-ddTHH:mm:ssZ format"
  }
}

variable "end_time" {
  description = "(Optional) You can determine the date and time when the schedule end. If you don't enter recurrence, be sure to enter startTime. It must be a time later than the current time and a time later than the startTime. Format : yyyy-MM-ddTHH:mm:ssZ format in UTC/KST only (for example, 2021-02-02T18:00:00+0900)."
  type = string
  default = null
  validation {
    condition = var.end_time == null || can(regex("^[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}Z$", var.end_time))
    error_message = "end_time should be in yyyy-MM-ddTHH:mm:ssZ format"
  }
}

variable "recurrence" {
  description = "(Optional) Repeat Settings. You can specify a recurring schedule in crontab format."
  type = string
  default = null
}

variable "auto_scaling_group_no" {
  description = "(Required) The number of the auto scaling group."
  type = number
}

# variable "time_zone" {
#   description = "(Optional) the time band for the repeat settings. Valid values are KST and UTC. Default : KST."
#   type = string
#   default = "KST"
#   validation {
#     condition = var.time_zone == "KST" || var.time_zone == "UTC"
#     error_message = "time_zone should be either KST or UTC"
#   }
# }