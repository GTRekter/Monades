variable "region" {
  description = "(Optional) The region of the block storage to create. The default is the region configured in the provider."
  type        = string
  default     = null
  validation {
    condition     = can(regex("^(KR1|KR2|JP1)$", var.region))
    error_message = "The region must be one of 'KR1', 'KR2', 'JP1'."
  }
}

variable "name" {
  description = "(Optional) The name of the block storage to create."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) The description of the block storage."
  type        = string
  default     = null
}

variable "size" {
  description = "(Required) The size of the block storage to create (GB)."
  type        = number
  validation {
    condition     = var.size > 0
    error_message = "The size of the block storage must be a positive number."
  }
}

variable "snapshot_id" {
  description = "(Optional) The snapshot ID from which to create the block storage."
  type        = string
  default     = null
}

variable "availability_zone" {
  description = "(Optional) The availability zone of the block storage to create. If the value does not exist, random availability zone is used."
  type        = string
  default     = null
}

variable "volume_type" {
  description = "(Optional) The type of the block storage. Options are 'General HDD', 'General SSD', 'Encrypted HDD', 'Encrypted SSD'."
  type        = string
  default     = "General HDD"
  validation {
    condition     = contains(["General HDD", "General SSD", "Encrypted HDD", "Encrypted SSD"], var.volume_type)
    error_message = "The volume type must be one of 'General HDD', 'General SSD', 'Encrypted HDD', 'Encrypted SSD'."
  }
}

variable "nhn_encryption" {
  description = <<EOF
(Optional) The encryption configuration for the block storage. The encryption block supports the following arguments:
- skm_appkey: (Required) The appKeys for Secure Key Manager products.
- skm_key_id: (Required) The key ID in Secure Key Manager.
EOF
  type = object({
    skm_appkey = string
    skm_key_id = string
  })
  default = null
}
