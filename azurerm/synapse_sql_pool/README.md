<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_synapse_sql_pool.synapse_sql_pool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_sql_pool) | resource |
| [azurerm_synapse_sql_pool_extended_auditing_policy.synapse_sql_pool_extended_auditing_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_sql_pool_extended_auditing_policy) | resource |
| [azurerm_synapse_sql_pool_security_alert_policy.synapse_sql_pool_security_alert_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_sql_pool_security_alert_policy) | resource |
| [azurerm_synapse_sql_pool_vulnerability_assessment.synapse_sql_pool_vulnerability_assessment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_sql_pool_vulnerability_assessment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_audit_logs_enabled"></a> [audit\_logs\_enabled](#input\_audit\_logs\_enabled) | (Optional) Enable extended auditing? Defaults to false. | `bool` | `false` | no |
| <a name="input_audit_logs_log_monitoring_enabled"></a> [audit\_logs\_log\_monitoring\_enabled](#input\_audit\_logs\_log\_monitoring\_enabled) | (Optional) Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to true. | `bool` | `true` | no |
| <a name="input_audit_logs_primary_blob_endpoint"></a> [audit\_logs\_primary\_blob\_endpoint](#input\_audit\_logs\_primary\_blob\_endpoint) | (Optional) The blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all extended auditing logs. | `string` | `null` | no |
| <a name="input_audit_logs_retention_in_days"></a> [audit\_logs\_retention\_in\_days](#input\_audit\_logs\_retention\_in\_days) | (Optional) The number of days to retain logs for in the storage account. Defaults to 0. | `number` | `0` | no |
| <a name="input_audit_logs_storage_account_access_key"></a> [audit\_logs\_storage\_account\_access\_key](#input\_audit\_logs\_storage\_account\_access\_key) | (Optional) The access key to use for the auditing storage account | `string` | `null` | no |
| <a name="input_audit_logs_storage_account_access_key_is_secondary"></a> [audit\_logs\_storage\_account\_access\_key\_is\_secondary](#input\_audit\_logs\_storage\_account\_access\_key\_is\_secondary) | (Optional) Is storage\_account\_access\_key value the storage's secondary key? | `bool` | `false` | no |
| <a name="input_collation"></a> [collation](#input\_collation) | (Optional) The name of the collation to use with this pool, only applicable when create\_mode is set to Default. Azure default is SQL\_LATIN1\_GENERAL\_CP1\_CI\_AS. Changing this forces a new Synapse SQL Pool to be created. | `string` | `"SQL_Latin1_General_CP1_CI_AS"` | no |
| <a name="input_create_mode"></a> [create\_mode](#input\_create\_mode) | (Optional) Specifies how to create the SQL Pool. Valid values are: Default, Recovery or PointInTimeRestore. Must be Default to create a new database. Defaults to Default. Changing this forces a new Synapse SQL Pool to be created. | `string` | `"Default"` | no |
| <a name="input_data_encrypted"></a> [data\_encrypted](#input\_data\_encrypted) | (Optional) Is transparent data encryption enabled? | `bool` | `true` | no |
| <a name="input_geo_backup_policy_enabled"></a> [geo\_backup\_policy\_enabled](#input\_geo\_backup\_policy\_enabled) | (Optional) Is geo-backup policy enabled? Possible values include true or false. Defaults to true. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name which should be used for this Synapse SQL Pool. Changing this forces a new Synapse SQL Pool to be created. | `string` | n/a | yes |
| <a name="input_recovery_database_id"></a> [recovery\_database\_id](#input\_recovery\_database\_id) | (Optional) The ID of the Synapse SQL Pool or SQL Database which is to back up, only applicable when create\_mode is set to Recovery. Changing this forces a new Synapse SQL Pool to be created. | `string` | `null` | no |
| <a name="input_restore"></a> [restore](#input\_restore) | (Optional) A restore block as defined below. Only applicable when create\_mode is set to PointInTimeRestore. Changing this forces a new Synapse SQL Pool to be created.<br>  - source\_database\_id: (Required) The ID of the Synapse SQL Pool or SQL Database which is to restore. Changing this forces a new Synapse SQL Pool to be created.<br>  - point\_in\_time: (Required) Specifies the Snapshot time to restore formatted as an RFC3339 date string. Changing this forces a new Synapse SQL Pool to be created. | <pre>object({<br>    source_database_id = string<br>    point_in_time      = string<br>  })</pre> | `null` | no |
| <a name="input_security_alert_policy_disabled_alerts"></a> [security\_alert\_policy\_disabled\_alerts](#input\_security\_alert\_policy\_disabled\_alerts) | (Optional) Specifies an array of alerts that are disabled. Allowed values are: Sql\_Injection, Sql\_Injection\_Vulnerability, Access\_Anomaly, Data\_Exfiltration, Unsafe\_Action. | `list(string)` | <pre>[<br>  "Sql_Injection",<br>  "Sql_Injection_Vulnerability",<br>  "Access_Anomaly",<br>  "Data_Exfiltration",<br>  "Unsafe_Action"<br>]</pre> | no |
| <a name="input_security_alert_policy_email_account_admins_enabled"></a> [security\_alert\_policy\_email\_account\_admins\_enabled](#input\_security\_alert\_policy\_email\_account\_admins\_enabled) | (Optional) Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to false. | `bool` | `false` | no |
| <a name="input_security_alert_policy_email_addresses"></a> [security\_alert\_policy\_email\_addresses](#input\_security\_alert\_policy\_email\_addresses) | (Optional) Specifies an array of e-mail addresses to which the alert is sent. | `list(string)` | `[]` | no |
| <a name="input_security_alert_policy_enabled"></a> [security\_alert\_policy\_enabled](#input\_security\_alert\_policy\_enabled) | (Optional) Specifies whether the policy is enabled or not. Defaults to false. | `bool` | `false` | no |
| <a name="input_security_alert_policy_retention_days"></a> [security\_alert\_policy\_retention\_days](#input\_security\_alert\_policy\_retention\_days) | (Optional) Specifies the number of days to keep in the Threat Detection audit logs. Defaults to 0. | `number` | `0` | no |
| <a name="input_security_alert_policy_state"></a> [security\_alert\_policy\_state](#input\_security\_alert\_policy\_state) | (Required) Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific SQL pool. Possible values are Disabled, Enabled and New. | `string` | `"New"` | no |
| <a name="input_security_alert_policy_storage_account_access_key"></a> [security\_alert\_policy\_storage\_account\_access\_key](#input\_security\_alert\_policy\_storage\_account\_access\_key) | (Optional) Specifies the identifier key of the Threat Detection audit storage account. | `string` | `null` | no |
| <a name="input_security_alert_policy_storage_endpoint"></a> [security\_alert\_policy\_storage\_endpoint](#input\_security\_alert\_policy\_storage\_endpoint) | (Optional) Specifies the blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs. | `string` | `null` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | (Required) Specifies the SKU Name for this Synapse SQL Pool. Possible values are DW100c, DW200c, DW300c, DW400c, DW500c, DW1000c, DW1500c, DW2000c, DW2500c, DW3000c, DW5000c, DW6000c, DW7500c, DW10000c, DW15000c or DW30000c. | `string` | n/a | yes |
| <a name="input_storage_account_type"></a> [storage\_account\_type](#input\_storage\_account\_type) | (Optional) The storage account type that will be used to store backups for this Synapse SQL Pool. Possible values are LRS or GRS. Changing this forces a new Synapse SQL Pool to be created. Defaults to GRS. | `string` | `"GRS"` | no |
| <a name="input_synapse_workspace_id"></a> [synapse\_workspace\_id](#input\_synapse\_workspace\_id) | (Required) The ID of Synapse Workspace within which this SQL Pool should be created. Changing this forces a new Synapse SQL Pool to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags which should be assigned to the Synapse SQL Pool. | `map(string)` | `{}` | no |
| <a name="input_vulnerability_assessment_enabled"></a> [vulnerability\_assessment\_enabled](#input\_vulnerability\_assessment\_enabled) | (Optional) Specifies whether the vulnerability assessment is enabled or not. Defaults to false. | `bool` | `false` | no |
| <a name="input_vulnerability_assessment_recurring_scans"></a> [vulnerability\_assessment\_recurring\_scans](#input\_vulnerability\_assessment\_recurring\_scans) | (Optional) The recurring scans settings. The recurring\_scans block supports fields documented below.<br>  - enabled: (Optional) Boolean flag which specifies if recurring scans is enabled or disabled. Defaults to false.<br>  - email\_subscription\_admins\_enabled: (Optional) Boolean flag which specifies if the schedule scan notification will be sent to the subscription administrators. Defaults to false.<br>  - emails: (Optional) Specifies an array of email addresses to which the scan notification is sent. | <pre>object({<br>    enabled                           = optional(bool)<br>    email_subscription_admins_enabled = optional(bool)<br>    emails                            = optional(list(string))<br>  })</pre> | `null` | no |
| <a name="input_vulnerability_assessment_storage_account_access_key"></a> [vulnerability\_assessment\_storage\_account\_access\_key](#input\_vulnerability\_assessment\_storage\_account\_access\_key) | (Optional) Specifies the identifier key of the storage account for vulnerability assessment scan results. If storage\_container\_sas\_key isn't specified, storage\_account\_access\_key is required. | `string` | `null` | no |
| <a name="input_vulnerability_assessment_storage_container_path"></a> [vulnerability\_assessment\_storage\_container\_path](#input\_vulnerability\_assessment\_storage\_container\_path) | (Required) A blob storage container path to hold the scan results (e.g. https://example.blob.core.windows.net/VaScans/). | `string` | `null` | no |
| <a name="input_vulnerability_assessment_storage_container_sas_key"></a> [vulnerability\_assessment\_storage\_container\_sas\_key](#input\_vulnerability\_assessment\_storage\_container\_sas\_key) | (Optional) A shared access signature (SAS Key) that has write access to the blob container specified in storage\_container\_path parameter. If storage\_account\_access\_key isn't specified, storage\_container\_sas\_key is required. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_extended_auditing_policy_id"></a> [extended\_auditing\_policy\_id](#output\_extended\_auditing\_policy\_id) | The ID of the Synapse SQL Pool Extended Auditing Policy. |
| <a name="output_security_alert_policy_id"></a> [security\_alert\_policy\_id](#output\_security\_alert\_policy\_id) | The ID of the Synapse SQL Pool Security Alert Policy. |
| <a name="output_sql_pool_id"></a> [sql\_pool\_id](#output\_sql\_pool\_id) | The ID of the Synapse SQL Pool. |
| <a name="output_vulnerability_assessment_id"></a> [vulnerability\_assessment\_id](#output\_vulnerability\_assessment\_id) | The ID of the Synapse SQL Pool Vulnerability Assessment. |
<!-- END_TF_DOCS -->