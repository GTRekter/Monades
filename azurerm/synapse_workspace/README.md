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
| [azurerm_synapse_firewall_rule.firewall_rules](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_firewall_rule) | resource |
| [azurerm_synapse_workspace.synapse_workspace](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_workspace) | resource |
| [azurerm_synapse_workspace_aad_admin.synapse_workspace_aad_admin](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_workspace_aad_admin) | resource |
| [azurerm_synapse_workspace_extended_auditing_policy.synapse_workspace_extended_auditing_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_workspace_extended_auditing_policy) | resource |
| [azurerm_synapse_workspace_security_alert_policy.synapse_workspace_security_alert_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_workspace_security_alert_policy) | resource |
| [azurerm_synapse_workspace_sql_aad_admin.synapse_workspace_sql_aad_admin](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_workspace_sql_aad_admin) | resource |
| [azurerm_synapse_workspace_vulnerability_assessment.synapse_workspace_vulnerability_assessment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_workspace_vulnerability_assessment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aad_admin"></a> [aad\_admin](#input\_aad\_admin) | Block used to define the Azure AD Administrator of this Synapse Workspace | <pre>object({<br>    login     = string<br>    object_id = string<br>    tenant_id = string<br>  })</pre> | `null` | no |
| <a name="input_auditing_policy_enabled"></a> [auditing\_policy\_enabled](#input\_auditing\_policy\_enabled) | Specifies whether the auditing policy is enabled. | `bool` | `false` | no |
| <a name="input_auditing_policy_log_monitoring_enabled"></a> [auditing\_policy\_log\_monitoring\_enabled](#input\_auditing\_policy\_log\_monitoring\_enabled) | Specifies whether log monitoring is enabled. | `bool` | `false` | no |
| <a name="input_auditing_policy_retention_in_days"></a> [auditing\_policy\_retention\_in\_days](#input\_auditing\_policy\_retention\_in\_days) | Specifies the number of days to retain the logs for. | `number` | `0` | no |
| <a name="input_auditing_policy_storage_account_access_key"></a> [auditing\_policy\_storage\_account\_access\_key](#input\_auditing\_policy\_storage\_account\_access\_key) | Specifies the storage account access key. | `string` | `null` | no |
| <a name="input_auditing_policy_storage_account_access_key_is_secondary"></a> [auditing\_policy\_storage\_account\_access\_key\_is\_secondary](#input\_auditing\_policy\_storage\_account\_access\_key\_is\_secondary) | Specifies whether the storage account access key is secondary. | `bool` | `false` | no |
| <a name="input_auditing_policy_storage_endpoint"></a> [auditing\_policy\_storage\_endpoint](#input\_auditing\_policy\_storage\_endpoint) | Specifies the storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all audit logs. | `string` | `null` | no |
| <a name="input_azure_devops_repo"></a> [azure\_devops\_repo](#input\_azure\_devops\_repo) | Block used to define the Azure DevOps repository to be used for this synapse Workspace | <pre>object({<br>    tenant_id       = optional(string)<br>    account_name    = string<br>    project_name    = string<br>    repository_name = string<br>    branch_name     = string<br>    root_folder     = optional(string)<br>    last_commit_id  = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_azuread_authentication_only"></a> [azuread\_authentication\_only](#input\_azuread\_authentication\_only) | Specifies whether Azure Active Directory only authentication should be used for this synapse Workspace. Defaults to false. | `bool` | `false` | no |
| <a name="input_compute_subnet_id"></a> [compute\_subnet\_id](#input\_compute\_subnet\_id) | Specifies the ID of the subnet within which the synapse Workspace should exist. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_customer_managed_key"></a> [customer\_managed\_key](#input\_customer\_managed\_key) | Block used to define the Azure Key Vault Key used as the Customer Managed Key (CMK) | <pre>object({<br>    key_versionless_id = string<br>    key_name           = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_data_exfiltration_protection_enabled"></a> [data\_exfiltration\_protection\_enabled](#input\_data\_exfiltration\_protection\_enabled) | Specifies whether data exfiltration protection is enabled for this synapse Workspace. Defaults to false. | `bool` | `false` | no |
| <a name="input_firewall_rules"></a> [firewall\_rules](#input\_firewall\_rules) | A map of firewall rules to apply to this synapse Workspace. Changing this forces a new resource to be created. | <pre>list(object({<br>    name             = string<br>    start_ip_address = string<br>    end_ip_address   = string<br>  }))</pre> | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) Specifies the Azure Region where the synapse Workspace should exist. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_managed_virtual_network_enabled"></a> [managed\_virtual\_network\_enabled](#input\_managed\_virtual\_network\_enabled) | Specifies whether Managed Virtual Network should be enabled for this synapse Workspace. Defaults to false. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Specifies the name which should be used for this synapse Workspace. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Specifies whether public network access should be enabled for this synapse Workspace. Defaults to false. | `bool` | `false` | no |
| <a name="input_purview_id"></a> [purview\_id](#input\_purview\_id) | The ID of the Purview resource associated with this Synapse Workspace. | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) Specifies the name of the Resource Group where the synapse Workspace should exist. | `string` | n/a | yes |
| <a name="input_security_alert_policy_disabled_alerts"></a> [security\_alert\_policy\_disabled\_alerts](#input\_security\_alert\_policy\_disabled\_alerts) | Specifies the list of disabled alerts. | `list(string)` | `[]` | no |
| <a name="input_security_alert_policy_email_account_admins_enabled"></a> [security\_alert\_policy\_email\_account\_admins\_enabled](#input\_security\_alert\_policy\_email\_account\_admins\_enabled) | Specifies whether to email the account admins when a security alert is triggered. | `bool` | `false` | no |
| <a name="input_security_alert_policy_email_addresses"></a> [security\_alert\_policy\_email\_addresses](#input\_security\_alert\_policy\_email\_addresses) | Specifies the list of email addresses to which the alert is sent. | `list(string)` | `[]` | no |
| <a name="input_security_alert_policy_enabled"></a> [security\_alert\_policy\_enabled](#input\_security\_alert\_policy\_enabled) | Specifies whether the security alert policy is enabled. | `bool` | `false` | no |
| <a name="input_security_alert_policy_retention_days"></a> [security\_alert\_policy\_retention\_days](#input\_security\_alert\_policy\_retention\_days) | Specifies the number of days to retain the logs for. | `number` | `0` | no |
| <a name="input_security_alert_policy_state"></a> [security\_alert\_policy\_state](#input\_security\_alert\_policy\_state) | Specifies the state of the security alert policy. Possible values are: 'New', 'Enabled', and 'Disabled'. | `string` | `"Enabled"` | no |
| <a name="input_security_alert_policy_storage_account_access_key"></a> [security\_alert\_policy\_storage\_account\_access\_key](#input\_security\_alert\_policy\_storage\_account\_access\_key) | Specifies the storage account access key. | `string` | `null` | no |
| <a name="input_security_alert_policy_storage_endpoint"></a> [security\_alert\_policy\_storage\_endpoint](#input\_security\_alert\_policy\_storage\_endpoint) | Specifies the blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs. | `string` | `null` | no |
| <a name="input_sql_aad_admin"></a> [sql\_aad\_admin](#input\_sql\_aad\_admin) | Block used to define the SQL Azure AD Administrator of this Synapse Workspace | <pre>object({<br>    login     = string<br>    object_id = string<br>    tenant_id = string<br>  })</pre> | `null` | no |
| <a name="input_sql_administrator_login"></a> [sql\_administrator\_login](#input\_sql\_administrator\_login) | Specifies The login name of the SQL administrator. Changing this forces a new resource to be created. If this is not provided aad\_admin or customer\_managed\_key must be provided. | `string` | `null` | no |
| <a name="input_sql_administrator_login_password"></a> [sql\_administrator\_login\_password](#input\_sql\_administrator\_login\_password) | The Password associated with the sql\_administrator\_login for the SQL administrator. | `string` | `null` | no |
| <a name="input_sql_identity_control_enabled"></a> [sql\_identity\_control\_enabled](#input\_sql\_identity\_control\_enabled) | Specifies whether SQL Identity control is enabled for this synapse Workspace. Defaults to false. | `bool` | `false` | no |
| <a name="input_storage_data_lake_gen2_filesystem_id"></a> [storage\_data\_lake\_gen2\_filesystem\_id](#input\_storage\_data\_lake\_gen2\_filesystem\_id) | (Required) Specifies the ID of storage data lake gen2 filesystem resource. The default data lake storage account url property should be in the format: https://accountname.dfs.core.windows.net. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_vulnerability_assessment_enabled"></a> [vulnerability\_assessment\_enabled](#input\_vulnerability\_assessment\_enabled) | Specifies whether the vulnerability assessment is enabled. | `bool` | `false` | no |
| <a name="input_vulnerability_assessment_recurring_scans"></a> [vulnerability\_assessment\_recurring\_scans](#input\_vulnerability\_assessment\_recurring\_scans) | A recurring scan configuration block. | <pre>object({<br>    enabled                           = bool<br>    email_subscription_admins_enabled = bool<br>    emails                            = list(string)<br>  })</pre> | `null` | no |
| <a name="input_vulnerability_assessment_storage_account_access_key"></a> [vulnerability\_assessment\_storage\_account\_access\_key](#input\_vulnerability\_assessment\_storage\_account\_access\_key) | The storage account access key. | `string` | `null` | no |
| <a name="input_vulnerability_assessment_storage_container_path"></a> [vulnerability\_assessment\_storage\_container\_path](#input\_vulnerability\_assessment\_storage\_container\_path) | A blob storage container path to hold the scan results (e.g. https://example.blob.core.windows.net/VaScans/) | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_extended_auditing_policy_id"></a> [extended\_auditing\_policy\_id](#output\_extended\_auditing\_policy\_id) | The ID of the Synapse Workspace Extended Auditing Policy. |
| <a name="output_firewall_rules_ids"></a> [firewall\_rules\_ids](#output\_firewall\_rules\_ids) | The IDs of the synapse Firewall Rules. |
| <a name="output_security_alert_policy_id"></a> [security\_alert\_policy\_id](#output\_security\_alert\_policy\_id) | The ID of the Synapse Workspace Security Alert Policy. |
| <a name="output_vulnerability_assessment_id"></a> [vulnerability\_assessment\_id](#output\_vulnerability\_assessment\_id) | The ID of the Synapse Workspace Vulnerability Assessment. |
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id) | The ID of the synapse Workspace. |
<!-- END_TF_DOCS -->