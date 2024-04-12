
variable "name" {
  description = "(Required) The name of the load balancer."
  type = string
}

variable "description" {
  description = "(Optional) The description of the load balancer."
  type = string
  default = null
}

variable "network_type" {
  description = "(Optional) The network type of load balancer to create. Accepted values: PUBLIC | PRIVATE. Default: PUBLIC."
  type = string
  default = "PUBLIC"
  validation {
    condition = contains(["PUBLIC", "PRIVATE"], var.network_type)
    error_message = "network_type must be one of PUBLIC or PRIVATE"
  }
}

variable "idle_timeout" {
  description = "(Optional) The time in seconds that the idle timeout. Valid only if the load balancer type is not NETWORK. Default: 60."
  type = number
  default = 60
}

variable "type" {
  description = "(Required) The type of load balancer to create. Accepted values: APPLICATION | NETWORK | NETWORK_PROXY."
  type = string
  validation {
    condition = contains(["APPLICATION", "NETWORK", "NETWORK_PROXY"], var.type)
    error_message = "type must be one of APPLICATION, NETWORK, or NETWORK_PROXY"
  }
}

variable "throughput_type" {
  description = "(Optional) The performance type code of load balancer. Accepted values: SMALL | MEDIUM | LARGE. If the load balancer type is NETWORK and the load balancer network type is PRIVATE, only SMALL can be selected. Default: SMALL."
  type = string
  default = "SMALL"
  validation {
    condition = contains(["SMALL", "MEDIUM", "LARGE"], var.throughput_type)
    error_message = "throughput_type must be one of SMALL, MEDIUM, or LARGE"
  }
}

variable "subnet_no_list" {
  description = "(Required) A list of IDs in the associated Subnets."
  type = list(string)
}