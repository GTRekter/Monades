variable "server_instance_no" {
  description = "(Required) Server instance number for which port forwarding is set"
  type        = string
}

variable "port_forwarding_external_port" {
  description = "(Required) External port for port forwarding"
  type        = string
}

variable "port_forwarding_internal_port" {
  description = "(Required) Internal port for port forwarding. Only the following ports are available. [Linux: 22 | Windows: 3389]"
  type        = number
  validation {
    condition     = can(regex("^(22|3389)$", var.port_forwarding_internal_port))
    error_message = "port_forwarding_internal_port must be either 22 or 3389."
  }
}

variable "port_forwarding_configuration_no" {
  description = "(Optional) Port forwarding configuration number. You can get by calling data ncloud_port_forwarding_rules"
  type        = string
  default     = null
}