variable "route_table_no" {
  description = "(Required) The ID of the Route table."
  type        = string
}

variable "destination_cidr_block" {
  description = "(Required) Destination CIDR block, Set the destination IP address range for the route you want to add. (e.g. 0.0.0.0/0, 100.10.20.0/24)"
  type        = string
}

variable "target_type" {
  description = "(Required) Destination target type, Select the destination type of the route to add. Accepted values: NATGW (NAT Gateway) | VPCPEERING (VPC Peering) | VGW (Virtual Private Gateway)."
  type        = string
  validation {
    condition     = can(regex("NATGW|VPCPEERING|VGW", var.target_type))
    error_message = "target_type must be NATGW, VPCPEERING, or VGW."
  }
}

variable "target_no" {
  description = "(Required) Set the destination identification number for the destination type."
  type        = string
}

variable "target_name" {
  description = "(Required) Set the destination name for the destination type."
  type        = string
}