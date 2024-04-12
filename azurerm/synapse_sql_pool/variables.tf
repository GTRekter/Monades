// ====================================
// Synapse SQL Pool Variables
// ====================================
variable "name" {
  description = "(Required) The name which should be used for this Synapse SQL Pool. Changing this forces a new Synapse SQL Pool to be created."
  type        = string
}
variable "synapse_workspace_id" {
  description = "(Required) The ID of Synapse Workspace within which this SQL Pool should be created. Changing this forces a new Synapse SQL Pool to be created."
  type        = string
}
variable "sku_name" {
  description = "(Required) Specifies the SKU Name for this Synapse SQL Pool. Possible values are DW100c, DW200c, DW300c, DW400c, DW500c, DW1000c, DW1500c, DW2000c, DW2500c, DW3000c, DW5000c, DW6000c, DW7500c, DW10000c, DW15000c or DW30000c."
  type        = string
  validation {
    condition     = can(regex("^(DW)(100c|200c|300c|400c|500c|1000c|1500c|2000c|2500c|3000c|5000c|6000c|7500c|10000c|15000c|30000c)$", var.sku_name))
    error_message = "Invalid SKU Name. Possible values are DW100c, DW200c, DW300c, DW400c, DW500c, DW1000c, DW1500c, DW2000c, DW2500c, DW3000c, DW5000c, DW6000c, DW7500c, DW10000c, DW15000c or DW30000c"
  }
}
variable "create_mode" {
  description = "(Optional) Specifies how to create the SQL Pool. Valid values are: Default, Recovery or PointInTimeRestore. Must be Default to create a new database. Defaults to Default. Changing this forces a new Synapse SQL Pool to be created."
  type        = string
  default     = "Default"
  validation {
    condition     = can(regex("^(Default|Recovery|PointInTimeRestore)$", var.create_mode))
    error_message = "Invalid Create Mode. Possible values are Default,  Recovery and PointInTimeRestore"
  }
}
variable "collation" {
  description = "(Optional) The name of the collation to use with this pool, only applicable when create_mode is set to Default. Azure default is SQL_LATIN1_GENERAL_CP1_CI_AS. Changing this forces a new Synapse SQL Pool to be created."
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
}
variable "data_encrypted" {
  description = "(Optional) Is transparent data encryption enabled?"
  type        = bool
  default     = true
}
variable "recovery_database_id" {
  description = "(Optional) The ID of the Synapse SQL Pool or SQL Database which is to back up, only applicable when create_mode is set to Recovery. Changing this forces a new Synapse SQL Pool to be created."
  type        = string
  default     = null
}
variable "restore" {
  description = <<EOF
  (Optional) A restore block as defined below. Only applicable when create_mode is set to PointInTimeRestore. Changing this forces a new Synapse SQL Pool to be created.
  - source_database_id: (Required) The ID of the Synapse SQL Pool or SQL Database which is to restore. Changing this forces a new Synapse SQL Pool to be created.
  - point_in_time: (Required) Specifies the Snapshot time to restore formatted as an RFC3339 date string. Changing this forces a new Synapse SQL Pool to be created.
  EOF
  type = object({
    source_database_id = string
    point_in_time      = string
  })
  default = null
}
variable "geo_backup_policy_enabled" {
  description = "(Optional) Is geo-backup policy enabled? Possible values include true or false. Defaults to true."
  type        = bool
  default     = true
}
variable "storage_account_type" {
  description = "(Optional) The storage account type that will be used to store backups for this Synapse SQL Pool. Possible values are LRS or GRS. Changing this forces a new Synapse SQL Pool to be created. Defaults to GRS."
  type        = string
  default     = "GRS"
  validation {
    condition     = can(regex("^(GRS|LRS)$", var.storage_account_type))
    error_message = "Invalid Storage Account Type. Possible values are GRS and LRS"
  }
}
variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to the Synapse SQL Pool."
  type        = map(string)
  default     = {}
}
// ====================================
// Extended Auditing Policy Variables
// ====================================
variable "audit_logs_enabled" {
  description = "(Optional) Enable extended auditing? Defaults to false."
  type        = bool
  default     = false
}
variable "audit_logs_primary_blob_endpoint" {
  description = "(Optional) The blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all extended auditing logs."
  type        = string
  default     = null
}
variable "audit_logs_retention_in_days" {
  description = "(Optional) The number of days to retain logs for in the storage account. Defaults to 0."
  type        = number
  default     = 0
}
variable "audit_logs_storage_account_access_key" {
  description = " (Optional) The access key to use for the auditing storage account"
  type        = string
  default     = null
}
variable "audit_logs_storage_account_access_key_is_secondary" {
  description = "(Optional) Is storage_account_access_key value the storage's secondary key?"
  type        = bool
  default     = false
}
variable "audit_logs_log_monitoring_enabled" {
  description = "(Optional) Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to true."
  type        = bool
  default     = true
}
// ====================================
// Security Alert Policy Variables
// ====================================
variable "security_alert_policy_enabled" {
  description = "(Optional) Specifies whether the policy is enabled or not. Defaults to false."
  type        = bool
  default     = false
}
variable "security_alert_policy_state" {
  description = "(Required) Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific SQL pool. Possible values are Disabled, Enabled and New."
  type        = string
  default     = "New"
  validation {
    condition     = can(regex("^(New|Enabled|Disabled)$", var.security_alert_policy_state))
    error_message = "Invalid Security Alert Policy State. Possible values are New, Enabled and Disabled"
  }
}
variable "security_alert_policy_disabled_alerts" {
  description = "(Optional) Specifies an array of alerts that are disabled. Allowed values are: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly, Data_Exfiltration, Unsafe_Action."
  type        = list(string)
  default     = ["Sql_Injection", "Sql_Injection_Vulnerability", "Access_Anomaly", "Data_Exfiltration", "Unsafe_Action"]
  validation {
    condition     = alltrue([for alert in var.security_alert_policy_disabled_alerts : can(regex("^(Sql_Injection|Sql_Injection_Vulnerability|Access_Anomaly|Data_Exfiltration|Unsafe_Action)$", alert))])
    error_message = "Invalid Security Alert Policy Disabled Alerts. Possible values are Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly, Data_Exfiltration, Unsafe_Action."
  }
}
variable "security_alert_policy_storage_endpoint" {
  description = "(Optional) Specifies the blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs."
  type        = string
  default     = null
}
variable "security_alert_policy_email_account_admins_enabled" {
  description = "(Optional) Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to false."
  type        = bool
  default     = false
}
variable "security_alert_policy_email_addresses" {
  description = "(Optional) Specifies an array of e-mail addresses to which the alert is sent."
  type        = list(string)
  default     = []
}
variable "security_alert_policy_retention_days" {
  description = "(Optional) Specifies the number of days to keep in the Threat Detection audit logs. Defaults to 0."
  type        = number
  default     = 0
}
variable "security_alert_policy_storage_account_access_key" {
  description = " (Optional) Specifies the identifier key of the Threat Detection audit storage account."
  type        = string
  default     = null
}
// ====================================
// Vulnerability Assessment Variables
// ====================================
variable "vulnerability_assessment_enabled" {
  description = "(Optional) Specifies whether the vulnerability assessment is enabled or not. Defaults to false."
  type        = bool
  default     = false
}
variable "vulnerability_assessment_storage_container_path" {
  description = "(Required) A blob storage container path to hold the scan results (e.g. https://example.blob.core.windows.net/VaScans/)."
  type        = string
  default     = null
}
variable "vulnerability_assessment_storage_account_access_key" {
  description = "(Optional) Specifies the identifier key of the storage account for vulnerability assessment scan results. If storage_container_sas_key isn't specified, storage_account_access_key is required."
  type        = string
  default     = null
}
variable "vulnerability_assessment_storage_container_sas_key" {
  description = "(Optional) A shared access signature (SAS Key) that has write access to the blob container specified in storage_container_path parameter. If storage_account_access_key isn't specified, storage_container_sas_key is required."
  type        = string
  default     = null
}
variable "vulnerability_assessment_recurring_scans" {
  description = <<EOF
  (Optional) The recurring scans settings. The recurring_scans block supports fields documented below.
  - enabled: (Optional) Boolean flag which specifies if recurring scans is enabled or disabled. Defaults to false.
  - email_subscription_admins_enabled: (Optional) Boolean flag which specifies if the schedule scan notification will be sent to the subscription administrators. Defaults to false.
  - emails: (Optional) Specifies an array of email addresses to which the scan notification is sent.
  EOF
  type = object({
    enabled                           = optional(bool)
    email_subscription_admins_enabled = optional(bool)
    emails                            = optional(list(string))
  })
  default = null
}