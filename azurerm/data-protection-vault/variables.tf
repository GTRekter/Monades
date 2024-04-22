variable "name" {
  description = "The name of the Data Protection Vault."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which the Data Protection Vault will be created."
  type        = string
}
variable "location" {
  description = "The location/region where the Data Protection Vault will be created."
  type        = string
}
variable "datastore_type" {
  description = "The type of the Datastore to be used for the Data Protection Vault."
  type        = string
}
variable "redundancy" {
  description = "Specifies the backup storage redundancy. Possible values are GeoRedundant, LocallyRedundant and ZoneRedundant. Changing this forces a new Backup Vault to be created."
  type        = string
  validation {
    condition     = can(regex("^(GeoRedundant|LocallyRedundant|ZoneRedundant)$", var.redundancy))
    error_message = "redundancy must be one of GeoRedundant, LocallyRedundant, or ZoneRedundant."
  }
}
variable "retention_duration_in_days" {
  description = "The soft delete retention duration for this Backup Vault. Possible values are between 14 and 180. Defaults to 14."
  type        = number
  default     = 14
  validation {
    condition     = var.retention_duration_in_days >= 14 && var.retention_duration_in_days <= 180
    error_message = "retention_duration_in_days must be between 14 and 180."
  }
}
variable "soft_delete" {
  description = "The state of soft delete for this Backup Vault. Possible values are AlwaysOn, Off and On. Defaults to On."
  type        = string
  default     = "On"
  validation {
    condition     = can(regex("^(AlwaysOn|Off|On)$", var.soft_delete))
    error_message = "soft_delete must be one of AlwaysOn, Off, or On."
  }
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
}

variable "storage_accounts" {
  description = "The storage account to be protected by the Data Protection Backup Policy."
  type = map(object({
    name                = string
    resource_group_name = string
  }))
}