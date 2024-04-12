variable "name" {
  description = "(Optional) Auto Scaling Group name to create. default : Ncloud assigns default values."
  type        = string
  default     = ""
}

variable "launch_configuration_no" {
  description = "(Required) Launch Configuration Number for creating Auto Scaling Group."
  type        = number
}

variable "desired_capacity" {
  description = "(Optional) The number of servers is adjusted according to the desired capacity value. This value must be more than the minimum capacity and less than the maximum capacity. If this value is not specified, initially create a server with a minimum capacity. valid from 0 to 30."
  type        = number
  default     = 0
  validation {
    condition     = var.desired_capacity >= 0 && var.desired_capacity <= 30
    error_message = "desired_capacity should be between 0 and 30"
  }
}

variable "min_size" {
  description = "(Required) The minimum size of the Auto Scaling Group. valid from 0 to 30."
  type        = number
  validation {
    condition     = var.min_size >= 0 && var.min_size <= 30
    error_message = "min_size should be between 0 and 30"
  }
}

variable "max_size" {
  description = "(Required) The maximum size of the Auto Scaling Group. valid from 0 to 30."
  type        = number
  validation {
    condition     = var.max_size >= 0 && var.max_size <= 30
    error_message = "max_size should be between 0 and 30"
  }
}

variable "ignore_capacity_changes" {
  description = "(Optional) If set this true, any changes of desired_capacity, min_size and max_size will be ignored and not rolled back."
  type        = bool
  default     = false
}

variable "default_cooldown" {
  description = "(Optional) The cooldown time is the period set to ignore even if the monitoring event alarm occurs after the actual scaling is being performed or is completed."
  type        = number
  default     = null
}

variable "health_check_type_code" {
  description = "(Optional) SVR or LOADB. Controls how health checking is done."
  type        = string
  default     = null
  validation {
    condition     = var.health_check_type_code == null || var.health_check_type_code == "SVR" || var.health_check_type_code == "LOADB"
    error_message = "health_check_type_code should be either SVR or LOADB"
  }
}

variable "wait_for_capacity_timeout" {
  description = "(Optional) The maximum amount of time Terraform should wait for an ASG instance to become healthy. Setting this to '0' causes Terraform to skip all Capacity Waiting behavior."
  type        = number
  default     = null
}

variable "health_check_grace_period" {
  description = "(Optional) Set the time to hold health check after the server instance is put into the service with the health check hold period. If the health_check_type_code is LOADB, health_check_grace_period is required."
  type        = number
  default     = null
}

variable "zone_no_list" {
  description = "(Optional) The list of zone numbers where server instances belonging to this group will exist."
  type        = list(number)
  default     = []
}