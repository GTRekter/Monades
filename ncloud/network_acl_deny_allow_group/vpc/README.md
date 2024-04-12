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
| [ncloud_network_acl_deny_allow_group.network_acl_deny_allow_group](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/network_acl_deny_allow_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) Description to create | `string` | `null` | no |
| <a name="input_ip_list"></a> [ip\_list](#input\_ip\_list) | (Required) Enter the IP addresses as list to be registered in the Deny-Allow Group. Up to 100 IPs can be registered. Duplicate IP addresses are not allowed. | `list(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name to create. If omitted, terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_vpc_no"></a> [vpc\_no](#input\_vpc\_no) | (Required) The ID of the associated VPC. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Deny-Allow Group. |
| <a name="output_network_acl_deny_allow_group_no"></a> [network\_acl\_deny\_allow\_group\_no](#output\_network\_acl\_deny\_allow\_group\_no) | The ID of the Deny-Allow Group. (It is the same result as id) |
<!-- END_TF_DOCS -->