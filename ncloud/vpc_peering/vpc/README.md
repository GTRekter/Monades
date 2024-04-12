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
| [ncloud_vpc_peering.vpc_peering](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/vpc_peering) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) description to create. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name to create. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_source_vpc_no"></a> [source\_vpc\_no](#input\_source\_vpc\_no) | (Required) The ID of VPC from which the request is sent. | `string` | n/a | yes |
| <a name="input_target_vpc_login_id"></a> [target\_vpc\_login\_id](#input\_target\_vpc\_login\_id) | (Optional) VPC Owner ID to receive requests (If the account receiving the request is different from the account you send, you must enter the account receiving the request. Must match E-mail format). | `string` | `null` | no |
| <a name="input_target_vpc_name"></a> [target\_vpc\_name](#input\_target\_vpc\_name) | (Optional) The name of the VPC that receives the request. | `string` | `null` | no |
| <a name="input_target_vpc_no"></a> [target\_vpc\_no](#input\_target\_vpc\_no) | (Required) The ID of VPC to receive requests. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_has_reverse_vpc_peering"></a> [has\_reverse\_vpc\_peering](#output\_has\_reverse\_vpc\_peering) | Reverse VPC Peering exists. |
| <a name="output_id"></a> [id](#output\_id) | The ID of VPC peering. |
| <a name="output_is_between_accounts"></a> [is\_between\_accounts](#output\_is\_between\_accounts) | VPC Peering Between Accounts. |
| <a name="output_vpc_peering_no"></a> [vpc\_peering\_no](#output\_vpc\_peering\_no) | The ID of VPC peering. (It is the same result as id) |
<!-- END_TF_DOCS -->