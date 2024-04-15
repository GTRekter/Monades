variable "volume_name_postfix" {
  description = "(Required) Name of a NAS volume to create. Enter a volume name that is 3-20 characters in length after entering the name for user identification."
  type        = string
  validation {
    condition     = length(var.volume_name_postfix) >= 3 && length(var.volume_name_postfix) <= 20
    error_message = "The volume name postfix must be between 3 and 20 characters in length."
  }
}

variable "volume_size" {
  description = "(Required) NAS volume size. The default capacity of a volume ranges from 500 GB to 10,000 GB. Additions can be made in units of 100 GB."
  type        = number
}

variable "volume_allotment_protocol_type" {
  description = "(Required) Volume allotment protocol type code. NFS | CIFS NFS: You can mount the volume in a Linux server such as CentOS and Ubuntu. CIFS: You can mount the volume in a Windows server."
  type        = string
  validation {
    condition     = can(regex("^(NFS|CIFS)$", var.volume_allotment_protocol_type))
    error_message = "The volume allotment protocol type must be NFS or CIFS."
  }
}

variable "server_instance_no_list" {
  description = "(Optional) List of server instance numbers where you want to mount the NAS volume."
  type        = list(string)
  default     = []
}

variable "cifs_user_name" {
  description = "(Optional) CIFS user name. The ID must contain a combination of English alphabet and numbers, which can be 6-19 characters in length."
  type        = string
  default     = null
}

variable "cifs_user_password" {
  description = "(Optional) CIFS user password. The password must contain a combination of at least 2 English letters, numbers and special characters, which can be 8-14 characters in length."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) NAS volume description. 1-1000 characters."
  type        = string
  default     = null
  validation {
    condition     = length(var.description) <= 1000
    error_message = "The description must be less than or equal to 1000 characters in length."
  }
}

variable "zone" {
  description = "(Optional) Zone code. Zone in which you want to create a NAS volume. Default: The first zone of the region. Get available values using the data source ncloud_zones."
  type        = string
  default     = null
}

variable "return_protection" {
  description = "(Optional) Termination protection status. Default false"
  type        = bool
  default     = false
}

variable "custom_ip_list" {
  description = "(Optional) To add a server of another account to the NAS volume, enter a private IP address of the server."
  type        = list(string)
  default     = []
}

