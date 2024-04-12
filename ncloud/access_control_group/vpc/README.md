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
| [ncloud_access_control_group.access_control_group](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/access_control_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) Indicates whether to get default group only. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name to create. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_vpc_no"></a> [vpc\_no](#input\_vpc\_no) | (Required) The ID of the associated VPC. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_control_group_no"></a> [access\_control\_group\_no](#output\_access\_control\_group\_no) | The ID of ACG(Access Control Group) (It is the same result as id) |
| <a name="output_id"></a> [id](#output\_id) | The ID of ACG(Access Control Group) |
| <a name="output_is_default"></a> [is\_default](#output\_is\_default) | Whether is default or not by VPC creation. |
<!-- END_TF_DOCS -->