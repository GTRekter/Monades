variable "name" {
  description = "Specifies the name of the Automation Account. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Automation Account is created. Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "sku_name" {
  description = "The SKU of the account. Possible values are Basic and Free."
  type        = string
  default     = "Basic"
  validation {
    condition     = contains(["Basic", "Free"], var.sku_name)
    error_message = "The SKU name must be either 'Basic' or 'Free'."
  }
}

variable "local_authentication_enabled" {
  description = "Whether requests using non-AAD authentication are blocked. Defaults to true."
  type        = bool
  default     = true
}

variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for the automation account. Defaults to true."
  type        = bool
  default     = true
}

variable "key_vault_key_id" {
  description = "The ID of the Key Vault Key which should be used to Encrypt the data in this Automation Account. Required if encryption is enabled."
  type        = string
  default     = null
}

variable "user_assigned_identity_id" {
  description = "The User Assigned Managed Identity ID to be used for accessing the Customer Managed Key for encryption. Optional."
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}