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
| [ncloud_subnet.subnet](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name to create. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_network_acl_no"></a> [network\_acl\_no](#input\_network\_acl\_no) | (Required) The ID of Network ACL. | `string` | n/a | yes |
| <a name="input_subnet"></a> [subnet](#input\_subnet) | (Required) assign some subnet address ranges within the range of VPC addresses, must be between /16 and/28 within the private band (10.0.0/8,172.16.0.0/12,192.168.0.0/16). | `string` | n/a | yes |
| <a name="input_subnet_type"></a> [subnet\_type](#input\_subnet\_type) | (Required) Internet connectivity. If you use PUBLIC all VMs created within Subnet will be assigned a certified IP by default and will be able to communicate directly over the Internet. Considering the characteristics of Subnet, you can choose Subnet for the purpose of use. Accepted values: PUBLIC (Public) \| PRIVATE (Private). | `string` | n/a | yes |
| <a name="input_usage_type"></a> [usage\_type](#input\_usage\_type) | (Optional) Usage type, Default GEN. Accepted values: GEN (General) \| LOADB (For LoadBalancer) \| BM (For BareMetal) \|NATGW (for NATGateway). | `string` | `"GEN"` | no |
| <a name="input_vpc_no"></a> [vpc\_no](#input\_vpc\_no) | (Required) The ID of the VPC where you want to place the Subnet. | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | (Required) Available zone where the subnet will be placed physically. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of Subnet. |
| <a name="output_subnet_no"></a> [subnet\_no](#output\_subnet\_no) | The ID of the Subnet. (It is the same result as id) |
| <a name="output_vpc_no"></a> [vpc\_no](#output\_vpc\_no) | The ID of VPC. |
<!-- END_TF_DOCS -->