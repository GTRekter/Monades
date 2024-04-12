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
| [ncloud_network_interface.network_interface](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/network_interface) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_control_groups"></a> [access\_control\_groups](#input\_access\_control\_groups) | (Required) List of ACG ID to apply to network interfaces. A maximum of three ACGs can be applied. | `list(string)` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | (Optional) description to create. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name to create. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_private_ip"></a> [private\_ip](#input\_private\_ip) | (Optional) Set the IP addresses that you want to assign to the network interface. Must be in the IP address range of the subnet where the network interface is created. The last 0 to `5' IP address of the Subnet is not available and duplicate IP addresses are not available at the Subnet scope.` | `string` | `null` | no |
| <a name="input_server_instance_no"></a> [server\_instance\_no](#input\_server\_instance\_no) | (Optional) The ID of server instance to assign network interface. | `string` | `null` | no |
| <a name="input_subnet_no"></a> [subnet\_no](#input\_subnet\_no) | (Required) The ID of the associated Subnet. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of Network Interface. |
| <a name="output_instance_type"></a> [instance\_type](#output\_instance\_type) | Type of server instance. |
| <a name="output_is_default"></a> [is\_default](#output\_is\_default) | Whether is default or not by Server instance creation. |
| <a name="output_network_interface_no"></a> [network\_interface\_no](#output\_network\_interface\_no) | The ID of Network Interface. (It is the same result as id) |
| <a name="output_status"></a> [status](#output\_status) | The status of Network Interface. |
<!-- END_TF_DOCS -->