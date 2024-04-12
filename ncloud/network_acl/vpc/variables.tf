variable "vpc_no" {
  description = "(Required) The ID of the associated VPC."
  type        = string
}

variable "name" {
  description = "(Optional) The name to create. If omitted, Terraform will assign a random, unique name."
  type        = string
  default = null
}

variable "description" {
  description = "(Optional) description to create."
  type        = string
  default = null
}