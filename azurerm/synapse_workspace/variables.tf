// ====================================
// Required Variables
// ====================================
variable "name" {
  description = "(Required) Specifies the name which should be used for this synapse Workspace. Changing this forces a new resource to be created."
  type        = string
}
variable "resource_group_name" {
  description = "(Required) Specifies the name of the Resource Group where the synapse Workspace should exist. "
  type        = string
}
variable "location" {
  description = "(Required) Specifies the Azure Region where the synapse Workspace should exist. Changing this forces a new resource to be created."
  type        = string
}
variable "storage_data_lake_gen2_filesystem_id" {
  description = "(Required) Specifies the ID of storage data lake gen2 filesystem resource. The default data lake storage account url property should be in the format: https://accountname.dfs.core.windows.net. Changing this forces a new resource to be created."
  type        = string
}

// ====================================
// Administrator Authentication Variables
// ====================================
variable "sql_administrator_login" {
  description = "Specifies The login name of the SQL administrator. Changing this forces a new resource to be created. If this is not provided aad_admin or customer_managed_key must be provided."
  type        = string
  default     = null
}
variable "sql_administrator_login_password" {
  description = "The Password associated with the sql_administrator_login for the SQL administrator."
  type        = string
  default     = null
}
variable "aad_admin" {
  description = "Block used to define the Azure AD Administrator of this Synapse Workspace"
  type = object({
    login     = string
    object_id = string
    tenant_id = string
  })
  default = null
}
variable "sql_aad_admin" {
  description = "Block used to define the SQL Azure AD Administrator of this Synapse Workspace"
  type = object({
    login     = string
    object_id = string
    tenant_id = string
  })
  default = null
}
variable "customer_managed_key" {
  description = "Block used to define the Azure Key Vault Key used as the Customer Managed Key (CMK)"
  type = object({
    key_versionless_id = string
    key_name           = optional(string)
  })
  default = null
}
variable "azuread_authentication_only" {
  description = "Specifies whether Azure Active Directory only authentication should be used for this synapse Workspace. Defaults to false."
  type        = bool
  default     = false
}

// ====================================
// Network Rule Variables
// ====================================
variable "managed_virtual_network_enabled" {
  description = "Specifies whether Managed Virtual Network should be enabled for this synapse Workspace. Defaults to false."
  type        = bool
  default     = false
}
variable "compute_subnet_id" {
  description = "Specifies the ID of the subnet within which the synapse Workspace should exist. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "public_network_access_enabled" {
  description = "Specifies whether public network access should be enabled for this synapse Workspace. Defaults to false."
  type        = bool
  default     = false
}
variable "firewall_rules" {
  description = "A map of firewall rules to apply to this synapse Workspace. Changing this forces a new resource to be created."
  type = list(object({
    name             = string
    start_ip_address = string
    end_ip_address   = string
  }))
  default = []
}

// ====================================
// Repository Variables
// ====================================
variable "azure_devops_repo" {
  description = "Block used to define the Azure DevOps repository to be used for this synapse Workspace"
  type = object({
    tenant_id       = optional(string)
    account_name    = string
    project_name    = string
    repository_name = string
    branch_name     = string
    root_folder     = optional(string)
    last_commit_id  = optional(string)
  })
  default = null
}
variable "data_exfiltration_protection_enabled" {
  description = "Specifies whether data exfiltration protection is enabled for this synapse Workspace. Defaults to false."
  type        = bool
  default     = false
}

// ====================================
// Additional Variables
// ====================================
variable "sql_identity_control_enabled" {
  description = "Specifies whether SQL Identity control is enabled for this synapse Workspace. Defaults to false."
  type        = bool
  default     = false
}
variable "purview_id" {
  description = "The ID of the Purview resource associated with this Synapse Workspace."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

// ====================================
// Auditing Variables
// ====================================
variable "auditing_policy_enabled" {
  description = "Specifies whether the auditing policy is enabled."
  type        = bool
  default     = false
}
variable "auditing_policy_storage_endpoint" {
  description = "Specifies the storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all audit logs."
  type        = string
  default     = null
}
variable "auditing_policy_storage_account_access_key" {
  description = "Specifies the storage account access key."
  type        = string
  default     = null
}
variable "auditing_policy_storage_account_access_key_is_secondary" {
  description = "Specifies whether the storage account access key is secondary."
  type        = bool
  default     = false
}
variable "auditing_policy_retention_in_days" {
  description = "Specifies the number of days to retain the logs for."
  type        = number
  default     = 0
}
variable "auditing_policy_log_monitoring_enabled" {
  description = "Specifies whether log monitoring is enabled."
  type        = bool
  default     = false
}

// ====================================
// Security Alert Variables
// ====================================
variable "security_alert_policy_enabled" {
  description = "Specifies whether the security alert policy is enabled."
  type        = bool
  default     = false
}
variable "security_alert_policy_state" {
  description = "Specifies the state of the security alert policy. Possible values are: 'New', 'Enabled', and 'Disabled'."
  type        = string
  default     = "Enabled"
  validation {
    condition     = can(regex("^(New|Enabled|Disabled)$", var.security_alert_policy_state))
    error_message = "security_alert_policy_state must be one of 'New', 'Enabled', or 'Disabled'."
  }
}
variable "security_alert_policy_disabled_alerts" {
  description = "Specifies the list of disabled alerts."
  type        = list(string)
  default     = []
  validation {
    condition     = var.security_alert_policy_disabled_alerts == [] || alltrue([for alert in var.security_alert_policy_disabled_alerts : contains(["Sql_Injection", "Sql_Injection_Vulnerability", "Access_Anomaly", "Data_Exfiltration", "Unsafe_Action"], alert)])
    error_message = "disabled_alerts must be null or a list containing any of 'Sql_Injection', 'Sql_Injection_Vulnerability', 'Access_Anomaly', 'Data_Exfiltration', or 'Unsafe_Action'."
  }
}
variable "security_alert_policy_email_account_admins_enabled" {
  description = "Specifies whether to email the account admins when a security alert is triggered."
  type        = bool
  default     = false
}
variable "security_alert_policy_email_addresses" {
  description = "Specifies the list of email addresses to which the alert is sent."
  type        = list(string)
  default     = []
}
variable "security_alert_policy_retention_days" {
  description = "Specifies the number of days to retain the logs for."
  type        = number
  default     = 0
}
variable "security_alert_policy_storage_account_access_key" {
  description = "Specifies the storage account access key."
  type        = string
  default     = null
}
variable "security_alert_policy_storage_endpoint" {
  description = "Specifies the blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs."
  type        = string
  default     = null
}

// ====================================
// Vulnerability Assessment Variables
// ====================================
variable "vulnerability_assessment_enabled" {
  description = "Specifies whether the vulnerability assessment is enabled."
  type        = bool
  default     = false
}
variable "vulnerability_assessment_storage_container_path" {
  description = "A blob storage container path to hold the scan results (e.g. https://example.blob.core.windows.net/VaScans/)"
  type        = string
  default     = null
}
variable "vulnerability_assessment_storage_account_access_key" {
  description = "The storage account access key."
  type        = string
  default     = null
}
variable "vulnerability_assessment_recurring_scans" {
  description = "A recurring scan configuration block."
  type = object({
    enabled                           = bool
    email_subscription_admins_enabled = bool
    emails                            = list(string)
  })
  default = null
}