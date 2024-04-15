variable "vpc_no" {
  description = "(Required) The ID of the associated VPC."
  type        = string
}

variable "zone" {
  description = "(Required) Available zone where the subnet will be placed physically."
  type        = string
}

variable "subnet_no" {
  description = "(Conditional) The ID of the associated SUBNET. This is required when creating a new one. The subnet type determines whether the NATGateway type is public or private."
  type        = string
  default     = null
}

variable "name" {
  description = "(Optional) The name to create. If omitted, Terraform will assign a random, unique name."
  type        = string
  default     = null
}

variable "private_ip" {
  description = "(Optional) Private IP on created NAT Gateway. If omitted, will auto create."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) description to create."
  type        = string
  default     = null
}