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
| [ncloud_route_table.route_table](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/route_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) description to create. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name to create. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_supported_subnet_type"></a> [supported\_subnet\_type](#input\_supported\_subnet\_type) | (Required) Subnet type. Accepted values : PUBLIC (Public) \| PRIVATE (Private). | `string` | n/a | yes |
| <a name="input_vpc_no"></a> [vpc\_no](#input\_vpc\_no) | (Required) The ID of the associated VPC. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Route table. |
| <a name="output_is_default"></a> [is\_default](#output\_is\_default) | Whether is default or not by VPC creation. |
| <a name="output_route_table_no"></a> [route\_table\_no](#output\_route\_table\_no) | The ID of the Route table. (It is the same result as id) |
<!-- END_TF_DOCS -->