variable "name" {
  description = "The name of the Data Protection Backup Instance."
  type        = string
}

variable "vault_id" {
  description = "The ID of the Data Protection Vault."
  type        = string
}

variable "location" {
  description = "The location/region where the Data Protection Backup Policy will be created."
  type        = string
}

variable "storage_account_id" {
  description = "The ID of the Storage Account."
  type        = string
}

variable "backup_policy_blob_storage_id" {
  description = "The ID of the Data Protection Backup Policy Blob Storage."
  type        = string
}