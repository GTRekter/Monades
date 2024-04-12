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
| [ncloud_server.server](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_control_group_configuration_no_list"></a> [access\_control\_group\_configuration\_no\_list](#input\_access\_control\_group\_configuration\_no\_list) | (Optional) You can set the ACG created when creating the server. ACG setting number can be obtained through the getAccessControlGroupList action. Default : Default ACG number | `list(string)` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) Server description to create. | `string` | `null` | no |
| <a name="input_fee_system_type_code"></a> [fee\_system\_type\_code](#input\_fee\_system\_type\_code) | (Optional) A rate system identification code. There are time plan(MTRAT) and flat rate (FXSUM). Default : Time plan(MTRAT) | `string` | `"Time plan(MTRAT)"` | no |
| <a name="input_is_protect_server_termination"></a> [is\_protect\_server\_termination](#input\_is\_protect\_server\_termination) | (Optional) You can set whether or not to protect return when creating. default :false | `bool` | `false` | no |
| <a name="input_login_key_name"></a> [login\_key\_name](#input\_login\_key\_name) | (Optional) The login key name to encrypt with the public key. Default : Uses the login key name most recently created. | `string` | `null` | no |
| <a name="input_member_server_image_no"></a> [member\_server\_image\_no](#input\_member\_server\_image\_no) | (Optional, Required if server\_image\_product\_code is not provided) Required value when creating a server from a manually created server image. It can be obtained through the data.ncloud\_member\_server\_image(s) action. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) Server name to create. default: Assigned by ncloud | `string` | `null` | no |
| <a name="input_raid_type_name"></a> [raid\_type\_name](#input\_raid\_type\_name) | (Optional) Raid Type Name. | `string` | `null` | no |
| <a name="input_server_image_product_code"></a> [server\_image\_product\_code](#input\_server\_image\_product\_code) | (Optional, Required if member\_server\_image\_no is not provided) Server image product code to determine which server image to create. It can be obtained through data.ncloud\_server\_image(s). | `string` | `null` | no |
| <a name="input_server_product_code"></a> [server\_product\_code](#input\_server\_product\_code) | (Optional) Server product code to determine the server specification to create. It can be obtained through the data.ncloud\_server\_product(s) action. Default : Selected as minimum specification. The minimum standards are 1. memory 2. CPU 3. basic block storage size 4. disk type (NET,LOCAL) | `string` | `null` | no |
| <a name="input_tag_list"></a> [tag\_list](#input\_tag\_list) | (Optional) Server instance tag list.<br>- tag\_key - (Required) Instance tag key<br>- tag\_value - (Required) Instance tag value | <pre>list(object({<br>        tag_key   = string<br>        tag_value = string<br>    }))</pre> | `null` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | (Optional) The server will execute the user data script set by the user at first boot. To view the column, it is returned only when viewing the server instance. | `string` | `null` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | (Optional) Zone code. You can determine the ZONE where the server will be created. Default : Assigned by NAVER Cloud Platform. Get available values using the data source ncloud\_zones. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_base_block_storage_disk_detail_type"></a> [base\_block\_storage\_disk\_detail\_type](#output\_base\_block\_storage\_disk\_detail\_type) | Base block storage disk detail type code. |
| <a name="output_base_block_storage_disk_type"></a> [base\_block\_storage\_disk\_type](#output\_base\_block\_storage\_disk\_type) | Base block storage disk type code. |
| <a name="output_base_block_storage_size"></a> [base\_block\_storage\_size](#output\_base\_block\_storage\_size) | The size of base block storage in bytes. |
| <a name="output_cpu_count"></a> [cpu\_count](#output\_cpu\_count) | number of CPUs. |
| <a name="output_id"></a> [id](#output\_id) | The ID of server instance. |
| <a name="output_instance_no"></a> [instance\_no](#output\_instance\_no) | The ID of server instance. |
| <a name="output_memory_size"></a> [memory\_size](#output\_memory\_size) | The size of the memory in bytes. |
| <a name="output_platform_type"></a> [platform\_type](#output\_platform\_type) | Platform type code. |
| <a name="output_port_forwarding_external_port"></a> [port\_forwarding\_external\_port](#output\_port\_forwarding\_external\_port) | Port forwarding external port. |
| <a name="output_port_forwarding_internal_port"></a> [port\_forwarding\_internal\_port](#output\_port\_forwarding\_internal\_port) | Port forwarding internal port. |
| <a name="output_port_forwarding_public_ip"></a> [port\_forwarding\_public\_ip](#output\_port\_forwarding\_public\_ip) | Port forwarding public ip. |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | Private IP. |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | Public IP. |
| <a name="output_server_image_name"></a> [server\_image\_name](#output\_server\_image\_name) | Server image name. |
<!-- END_TF_DOCS -->