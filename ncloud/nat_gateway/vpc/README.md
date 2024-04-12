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
| [ncloud_nat_gateway.nat_gateway](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/nat_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) description to create. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name to create. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_private_ip"></a> [private\_ip](#input\_private\_ip) | (Optional) Private IP on created NAT Gateway. If omitted, will auto create. | `string` | `null` | no |
| <a name="input_subnet_no"></a> [subnet\_no](#input\_subnet\_no) | (Conditional) The ID of the associated SUBNET. This is required when creating a new one. The subnet type determines whether the NATGateway type is public or private. | `string` | `null` | no |
| <a name="input_vpc_no"></a> [vpc\_no](#input\_vpc\_no) | (Required) The ID of the associated VPC. | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | (Required) Available zone where the subnet will be placed physically. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the NAT Gateway. |
| <a name="output_nat_gateway_no"></a> [nat\_gateway\_no](#output\_nat\_gateway\_no) | The ID of the NAT Gateway. (It is the same result as id) |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | Public IP on created NAT Gateway. |
| <a name="output_public_ip_no"></a> [public\_ip\_no](#output\_public\_ip\_no) | The ID of the associated Public IP. |
| <a name="output_subnet_name"></a> [subnet\_name](#output\_subnet\_name) | Subnet name on created NAT Gateway. |
<!-- END_TF_DOCS -->