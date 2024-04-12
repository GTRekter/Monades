variable "size" {
  description = "(Required) The size of the block storage to create. It is automatically set when you take a snapshot."
  type        = string
}

variable "server_instance_no" {
  description = "(Required) When first created. (Optional) After creation. Server instance ID to which you want to assign the block storage."
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

variable "disk_detail_type" {
  description = "(Optional) Type of block storage disk detail to create. Default SSD. Accepted values: SSD | HDD"
  type        = string
  default = "SSD"
  validation {
    condition = can(regex("^(SSD|HDD)$", var.disk_detail_type))
    error_message = "disk_detail_type must be either SSD or HDD."
  }
}

variable "stop_instance_before_detaching" {
  description = "(Optional, Boolean) Set this to true to ensure that the target instance is stopped before trying to detach the block storage. It stops the instance, if it is not already stopped. > If stop_instance_before_detaching is true, server will be stopped and will not start automatically. User must start server instance manually via NCLOUD console or API."
  type        = bool
  default     = false
}

variable "zone" {
  description = "(Optional) The availability zone in which the block storage instance will be created."
  type        = string
  default     = null
}

variable "snapshot_no" {
  description = "(Optional) Create the block storage from the snapshots you take."
  type        = string
  default     = null
}