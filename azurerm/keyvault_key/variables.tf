variable "key_vault_name" {
  description = "The Name of the Key Vault instance where the Secret resides, available on the azurerm_key_vault Data Source / Resource. NOTE: The vault must be in the same subscription as the provider. If the vault is in another subscription, you must create an aliased provider for that subscription."
  type        = string
}

variable "key_vault_resource_group_name" {
  description = "The Resource Group Name of the Key Vault instance where the Secret resides, available on the azurerm_key_vault Data Source / Resource. NOTE: The vault must be in the same subscription as the provider. If the vault is in another subscription, you must create an aliased provider for that subscription."
  type        = string
}

variable "name" {
  description = "Specifies the name of the Key Vault Key."
  default     = "generated-certificate"
  type        = string
}

variable "key_type" {
  description = "Specifies the Key Type of this Key Vault Key. Valid values are: RSA, RSA-HSM, EC, EC-HSM."
  default     = "RSA"
  type        = string
  validation {
    condition     = can(regex("^RSA$|^RSA-HSM$|^EC$|^EC-HSM$", var.key_type))
    error_message = "Invalid key_type value. Valid values are: RSA, RSA-HSM, EC, EC-HSM."
  }
}

variable "key_size" {
  description = "Specifies the Size of this Key Vault Key. Valid values are: 2048, 3072, 4096, 5120, 6144, 7168, 8192."
  default     = 2048
  type        = number
  validation {
    condition     = var.key_size == null || can(index([2048, 3072, 4096, 5120, 6144, 7168, 8192], var.key_size))
    error_message = "Invalid key_size value. Valid values are: 2048, 3072, 4096, 5120, 6144, 7168, 8192 or null."
  }
}
variable "curve" {
  description = "The EC Curve name of this Key Vault Key. Valid values are: P-256, P-256K, P-384, P-521."
  default     = null
  type        = string
  validation {
    condition     = var.curve == null || can(regex("^P-256$|^P-256K$|^P-384$|^P-521$", var.curve))
    error_message = "Invalid curve value. Valid values are: P-256, P-256K, P-384, P-521 or null."
  }
}

variable "key_opts" {
  description = "A list of JSON web key operations assigned to this Key Vault Key. Valid values are: decrypt, encrypt, sign, unwrapKey, verify, wrapKey."
  type        = list(string)
}

variable "not_before_date" {
  description = "Specifies the Not Before date of this Key Vault Key."
  default     = null
  type        = string
  validation {
    condition     = var.not_before_date == null || can(regex("^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}Z$", var.not_before_date))
    error_message = "Invalid not_before_date value. The value must be in UTC format or null."
  }
}

variable "expiration_date" {
  description = "Specifies the Expiration date of this Key Vault Key."
  default     = null
  type        = string
  validation {
    condition     = var.expiration_date == null || can(regex("^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}Z$", var.expiration_date))
    error_message = "Invalid expiration_date value. The value must be in UTC format or null."
  }
}

variable "rotation_policy" {
  description = "Specifies the Rotation Policy of this Key Vault Key."
  default     = null
  type = object({
    automatic = optional(object({
      time_before_expiry  = optional(string)
      time_after_creation = optional(string)
    }))
    expire_after         = optional(string)
    notify_before_expiry = optional(string)
  })
}

variable "tags" {
  description = "A mapping of tags assigned to this Key Vault Key."
  default     = null
  type        = map(string)
}
