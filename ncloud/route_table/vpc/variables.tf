variable "vpc_no" {
  description = "(Required) The ID of the associated VPC."
  type        = string
}

variable "supported_subnet_type" {
  description = "(Required) Subnet type. Accepted values : PUBLIC (Public) | PRIVATE (Private)."
  type        = string
  validation {
    condition     = can(regex("PUBLIC|PRIVATE", var.supported_subnet_type))
    error_message = "supported_subnet_type must be PUBLIC or PRIVATE."
  }
}

variable "name" {
  description = "(Optional) The name to create. If omitted, Terraform will assign a random, unique name."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) description to create."
  type        = string
  default     = null
}