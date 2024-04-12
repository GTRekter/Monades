<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ncloud"></a> [ncloud](#provider\_ncloud) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ncloud_mssql.mssql_server](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/mssql) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backup_file_retention_period"></a> [backup\_file\_retention\_period](#input\_backup\_file\_retention\_period) | (Optional) Backups are performed daily and backup files are stored in separate backup storage. Fees are charged based on the space used. Default : 1(1 day), Min: 1, Max: 30 | `number` | `1` | no |
| <a name="input_backup_time"></a> [backup\_time](#input\_backup\_time) | (Optional, Required if is\_backup is true and is\_automatic\_backup is false) You can set the time when backup is performed. it must be entered if backup status(is\_backup) is true and automatic backup status(is\_automatic\_backup) is false. | `string` | `null` | no |
| <a name="input_character_set_name"></a> [character\_set\_name](#input\_character\_set\_name) | (Optional) DB character set can be selected from Korean and English collation. You can view through getCloudMssqlCharacterSetList API. Default: Korean\_Wansung\_CI\_AS. Options: Korean\_Wansung\_CI\_AS, SQL\_Latin1\_General\_CP1\_CI\_AS | `string` | `"Korean_Wansung_CI_AS"` | no |
| <a name="input_config_group_no"></a> [config\_group\_no](#input\_config\_group\_no) | (Optional) MSSQL config group Number. Already-created Config Group can be applied when creating a server. When you do not have any config groups, you can select from provided config groups by default. You can view through getCloudMssqlConfigGroupList API. Default: 0 | `string` | `"0"` | no |
| <a name="input_data_storage_type"></a> [data\_storage\_type](#input\_data\_storage\_type) | (Optional) Data storage type. You can select SSD\|HDD. Default: SSD | `string` | `"SSD"` | no |
| <a name="input_image_product_code"></a> [image\_product\_code](#input\_image\_product\_code) | (Optional) Image product code to determine the MSSQL instance server image specification to create. If not entered, the instance is created for default value. It can be obtained through ncloud\_mssql\_image\_products data source | `string` | `null` | no |
| <a name="input_is_automatic_backup"></a> [is\_automatic\_backup](#input\_is\_automatic\_backup) | (Optional) You can select whether to automatically set the backup time. if is\_automatic\_backup is true, backup\_time cannot be entered. Default : true | `bool` | `true` | no |
| <a name="input_is_ha"></a> [is\_ha](#input\_is\_ha) | (Required) Whether is High Availability or not. If High Availability is selected, 2 servers including the Standby Master server will be created and additional charges will be incurred. Default : true. | `bool` | `true` | no |
| <a name="input_port"></a> [port](#input\_port) | (Optional) You can set TCP port to access the mssql instance. Default : 1433, Min: 10000, Max: 20000 | `number` | `1433` | no |
| <a name="input_product_code"></a> [product\_code](#input\_product\_code) | (Optional) Product code to determine the MSSQL instance server image specification to create. It can be obtained through ncloud\_mssql\_products data source. Default : Minimum specifications(1 memory, 2 cpu) | `string` | `null` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | (Required) Service name to create. Only English alphabets, numbers, dash ( - ) and Korean letters can be entered. Min: 3, Max: 15 | `string` | n/a | yes |
| <a name="input_subnet_no"></a> [subnet\_no](#input\_subnet\_no) | (Required) The ID of the associated Subnet. | `string` | n/a | yes |
| <a name="input_user_name"></a> [user\_name](#input\_user\_name) | (Required) MSSQL access User ID. Only English letters, numbers, and underscore characters ( \_ ) are allowed, and must start with an English letter. Min: 4, Max: 16 | `string` | n/a | yes |
| <a name="input_user_password"></a> [user\_password](#input\_user\_password) | (Required) MSSQL access User Password. Must be at least 8 characters in length and contain at least 1 each of English letter, special character, and number. Min: 8, Max: 20 | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_control_group_no_list"></a> [access\_control\_group\_no\_list](#output\_access\_control\_group\_no\_list) | The ID list of the associated Access Control Group. |
| <a name="output_engine_version"></a> [engine\_version](#output\_engine\_version) | MSSQL Engine version. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the MSSQL server. |
| <a name="output_mssql_server_list"></a> [mssql\_server\_list](#output\_mssql\_server\_list) | The list of the MSSQL server.<br>- server\_instance\_no: Server instance number.<br>- server\_name: Server name.<br>- server\_role: Server role code. ex) M(Principal), H(Mirror)<br>- zone\_code: Zone code.<br>- subnet\_no: The ID of the associated Subnet.<br>- product\_code: Product code.<br>- is\_public\_subnet: Public subnet status.<br>- private\_domain: Private domain.<br>- public\_domain: Public domain.<br>- memory\_size: Available memory size.<br>- cpu\_count: CPU count.<br>- data\_storage\_size: Storage size.<br>- used\_data\_storage\_size: Size of data storage in use.<br>- uptime: Running start time.<br>- create\_date: Server create date. |
| <a name="output_region_code"></a> [region\_code](#output\_region\_code) | Region code. |
| <a name="output_vpc_no"></a> [vpc\_no](#output\_vpc\_no) | The ID of the associated Vpc. |
<!-- END_TF_DOCS -->