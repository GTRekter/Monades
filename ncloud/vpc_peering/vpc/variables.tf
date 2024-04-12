variable "source_vpc_no" {
  description = "(Required) The ID of VPC from which the request is sent."
  type        = string
}

variable "target_vpc_no" {
  description = "(Required) The ID of VPC to receive requests."
  type        = string
}

variable "target_vpc_name" {
  description = "(Optional) The name of the VPC that receives the request."
  type        = string
  default     = null
}

variable "target_vpc_login_id" {
  description = "(Optional) VPC Owner ID to receive requests (If the account receiving the request is different from the account you send, you must enter the account receiving the request. Must match E-mail format)."
  type        = string
  default     = null
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