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
| <a name="input_description"></a> [description](#input\_description) | (Optional) Server description to create. | `string` | `null` | no |
| <a name="input_fee_system_type_code"></a> [fee\_system\_type\_code](#input\_fee\_system\_type\_code) | (Optional) A rate system identification code. There are time plan(MTRAT) and flat rate (FXSUM). Default : Time plan(MTRAT) | `string` | `"Time plan(MTRAT)"` | no |
| <a name="input_init_script_no"></a> [init\_script\_no](#input\_init\_script\_no) | (Optional) Set init script ID, The server can run a user-set initialization script at first boot. | `string` | `null` | no |
| <a name="input_is_encrypted_base_block_storage_volume"></a> [is\_encrypted\_base\_block\_storage\_volume](#input\_is\_encrypted\_base\_block\_storage\_volume) | (Optional) you can set whether to encrypt basic block storage if server image is RHV. Default false. | `bool` | `false` | no |
| <a name="input_is_protect_server_termination"></a> [is\_protect\_server\_termination](#input\_is\_protect\_server\_termination) | (Optional) You can set whether or not to protect return when creating. default :false | `bool` | `false` | no |
| <a name="input_login_key_name"></a> [login\_key\_name](#input\_login\_key\_name) | (Optional) The login key name to encrypt with the public key. Default : Uses the login key name most recently created. | `string` | `null` | no |
| <a name="input_member_server_image_no"></a> [member\_server\_image\_no](#input\_member\_server\_image\_no) | (Optional, Required if server\_image\_product\_code is not provided) Required value when creating a server from a manually created server image. It can be obtained through the data.ncloud\_member\_server\_image(s) action. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) Server name to create. default: Assigned by ncloud | `string` | `null` | no |
| <a name="input_network_interface"></a> [network\_interface](#input\_network\_interface) | List of Network Interface.<br>- network\_interface\_no - (Required) If you want to add a network interface that you created yourself, set the network interface ID.<br>- order - (Required) Sets the order of network interfaces to be assigned to the server to create. The unit name (eth0, eth1, etc.) is determined in that order. There must be one primary network interface. If you set 0, network interface is set by default. You can assign up to three network interfaces. | <pre>list(object({<br>        network_interface_no = string<br>        order                = number<br>    }))</pre> | `null` | no |
| <a name="input_placement_group_no"></a> [placement\_group\_no](#input\_placement\_group\_no) | (Optional) Physical placement group that belongs to the server instance. | `string` | `null` | no |
| <a name="input_server_image_product_code"></a> [server\_image\_product\_code](#input\_server\_image\_product\_code) | (Optional, Required if member\_server\_image\_no is not provided) Server image product code to determine which server image to create. It can be obtained through data.ncloud\_server\_image(s). | `string` | `null` | no |
| <a name="input_server_product_code"></a> [server\_product\_code](#input\_server\_product\_code) | (Optional) Server product code to determine the server specification to create. It can be obtained through the data.ncloud\_server\_product(s) action. Default : Selected as minimum specification. The minimum standards are 1. memory 2. CPU 3. basic block storage size 4. disk type (NET,LOCAL) | `string` | `null` | no |
| <a name="input_subnet_no"></a> [subnet\_no](#input\_subnet\_no) | (Required) The ID of the associated Subnet. | `string` | n/a | yes |
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
| <a name="output_network_interface"></a> [network\_interface](#output\_network\_interface) | List of Network Interface.<br>- subnet\_no - Subnet ID of the network interface.<br>- private\_ip - IP address of the network interface. |
| <a name="output_platform_type"></a> [platform\_type](#output\_platform\_type) | Platform type code. |
| <a name="output_port_forwarding_external_port"></a> [port\_forwarding\_external\_port](#output\_port\_forwarding\_external\_port) | Port forwarding external port. |
| <a name="output_port_forwarding_internal_port"></a> [port\_forwarding\_internal\_port](#output\_port\_forwarding\_internal\_port) | Port forwarding internal port. |
| <a name="output_port_forwarding_public_ip"></a> [port\_forwarding\_public\_ip](#output\_port\_forwarding\_public\_ip) | Port forwarding public ip. |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | Private IP. |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | Public IP. |
| <a name="output_server_image_name"></a> [server\_image\_name](#output\_server\_image\_name) | Server image name. |
| <a name="output_vpc_no"></a> [vpc\_no](#output\_vpc\_no) | The ID of the VPC where you want to place the Server Instance. |
<!-- END_TF_DOCS -->