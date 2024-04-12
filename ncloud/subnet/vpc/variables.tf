variable "vpc_no" {
  description = "(Required) The ID of the VPC where you want to place the Subnet."
  type        = string
}

variable "subnet" {
  description = "(Required) assign some subnet address ranges within the range of VPC addresses, must be between /16 and/28 within the private band (10.0.0/8,172.16.0.0/12,192.168.0.0/16)."
  type        = string
}

variable "zone" {
  description = "(Required) Available zone where the subnet will be placed physically."
  type        = string
}

variable "network_acl_no" {
  description = "(Required) The ID of Network ACL."
  type        = string
}

variable "subnet_type" {
  description = "(Required) Internet connectivity. If you use PUBLIC all VMs created within Subnet will be assigned a certified IP by default and will be able to communicate directly over the Internet. Considering the characteristics of Subnet, you can choose Subnet for the purpose of use. Accepted values: PUBLIC (Public) | PRIVATE (Private)."
  type        = string
validation {
    condition     = can(regex("PUBLIC|PRIVATE", var.supported_subnet_type))
    error_message = "subnet_type must be PUBLIC or PRIVATE."
  }
}

variable "name" {
  description = "(Optional) The name to create. If omitted, Terraform will assign a random, unique name."
  type        = string
  default     = null
}

variable "usage_type" {
  description = "(Optional) Usage type, Default GEN. Accepted values: GEN (General) | LOADB (For LoadBalancer) | BM (For BareMetal) |NATGW (for NATGateway)."
  type        = string
  default     = "GEN"
  validation {
    condition     = can(regex("GEN|LOADB|BM|NATGW", var.usage_type))
    error_message = "usage_type must be GEN, LOADB, BM, or NATGW."
  }
}