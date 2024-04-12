variable "server_instance_no" {
  description = "(Optional) Server instance number to assign after creating a public IP. You can get one by calling getPublicIpTargetServerInstanceList."
  type        = string
  default =  null
}

variable "description" {
  description = "(Optional) Public IP description."
  type        = string
  default = null
}

variable "zone" {
  description = "(Optional) Zone code. You can decide a zone where servers are created. You can decide in which zone the product list will be requested. default : Select the first Zone in the specific region Get available values using the data source ncloud_zones."
  type        = string
  default = null
}