variable "name" {
  description = "(Required) Auto Scaling Policy name to create. Only lowercase alphanumeric characters and non-consecutive hyphens (-) allowed. First character must be a letter, but the last character may be a letter or a number."
  type        = string
}

variable "adjustment_type_code" {
  description = "(Required) Determines how the number of servers is scaled when the scaling policy is performed. Valid values are CHANG, EXACT, and PRCNT."
  type        = string
  validation {
    condition     = var.adjustment_type_code == "CHANG" || var.adjustment_type_code == "EXACT" || var.adjustment_type_code == "PRCNT"
    error_message = "adjustment_type_code should be either CHANG, EXACT, or PRCNT"
  }
}

variable "scaling_adjustment" {
  description = "(Required) Specify the adjustment value for the adjustment type. Enter a negative value to decrease when adjustTypeCode is CHANG or PRCNT."
  type        = number
}

variable "cooldown" {
  description = "(Optional) The cooldown time is the period set to ignore even if the monitoring event alarm occurs after the actual scaling is being performed or is completed."
  type        = number
  default     = 0
}

variable "min_adjustment_step" {
  description = "(Optional) Change the number of server instances by the minimum adjustment width."
  type        = number
  default     = 1
}

variable "auto_scaling_group_no" {
  description = "(Required) The number of the auto scaling group."
  type        = number
}