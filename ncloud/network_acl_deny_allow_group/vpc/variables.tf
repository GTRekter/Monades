variable "vpc_no" {
  description = "(Required) The ID of the associated VPC."
  type        = string
}

variable "ip_list" {
  description = "(Required) Enter the IP addresses as list to be registered in the Deny-Allow Group. Up to 100 IPs can be registered. Duplicate IP addresses are not allowed."
  type        = list(string)
  validation {
    condition     = length(var.ip_list) <= 100
    error_message = "The number of IP addresses to be registered in the Deny-Allow Group must be less than or equal to 100."
  }
}

variable "name" {
  description = "(Optional) The name to create. If omitted, terraform will assign a random, unique name."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) Description to create"
  type        = string
  default     = null
}