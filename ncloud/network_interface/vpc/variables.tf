variable "subnet_no" {
  description = "(Required) The ID of the associated Subnet."
  type        = string
}

variable "access_control_groups" {
  description = "(Required) List of ACG ID to apply to network interfaces. A maximum of three ACGs can be applied."
  type        = list(string)
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

variable "private_ip" {
  description = "(Optional) Set the IP addresses that you want to assign to the network interface. Must be in the IP address range of the subnet where the network interface is created. The last 0 to `5' IP address of the Subnet is not available and duplicate IP addresses are not available at the Subnet scope."
  type        = string
  default     = null
}

variable "server_instance_no" {
  description = "(Optional) The ID of server instance to assign network interface."
  type        = string
  default     = null
}