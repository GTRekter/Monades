variable "name" {
  description = "(Optional) The name to create. If omitted, Terraform will assign a random, unique name."
  type        = string
}

variable "placement_group_type" {
  description = "(Optional) Type of placement group. Default AA. Accepted values: AA"
  type        = string
  default     = "AA"
  validation {
    condition     = can(regex("AA", var.placement_group_type))
    error_message = "Placement group type must be 'AA'"
  }
}