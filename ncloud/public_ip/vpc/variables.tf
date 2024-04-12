variable "server_instance_no" {
  description = "(Optional) Server instance number to assign after creating a public IP. You can get one by calling getPublicIpTargetServerInstanceList."
  type        = string
}

variable "description" {
  description = "(Optional) Public IP description."
  type        = string
}