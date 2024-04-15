variable "block_storage_instance_no" {
  description = "(Required) Block storage instance Number for creating snapshot."
  type        = string
}

variable "name" {
  description = "(Optional) Block storage snapshot name to create. default : Ncloud assigns default values."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) Descriptions on a snapshot to create."
  type        = string
  default     = null
}