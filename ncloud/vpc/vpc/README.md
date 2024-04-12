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
| [ncloud_vpc.vpc](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ipv4_cidr_block"></a> [ipv4\_cidr\_block](#input\_ipv4\_cidr\_block) | (Required) The CIDR block of the VPC. The range must be between /16 and/28 within the private band (10.0.0/8,172.16.0.0/12,192.168.0.0/16). | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name to create. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_access_control_group_no"></a> [default\_access\_control\_group\_no](#output\_default\_access\_control\_group\_no) | The ID of the ACG created by default on VPC creation. |
| <a name="output_default_network_acl_no"></a> [default\_network\_acl\_no](#output\_default\_network\_acl\_no) | The ID of the network ACL created by default on VPC creation. |
| <a name="output_default_private_route_table_no"></a> [default\_private\_route\_table\_no](#output\_default\_private\_route\_table\_no) | The ID of the Private Route Table created by default on VPC creation. |
| <a name="output_default_public_route_table_no"></a> [default\_public\_route\_table\_no](#output\_default\_public\_route\_table\_no) | The ID of the Public Route Table created by default on VPC creation. |
| <a name="output_id"></a> [id](#output\_id) | The ID of VPC. |
| <a name="output_vpc_no"></a> [vpc\_no](#output\_vpc\_no) | The ID of VPC. (It is the same result as id) |
<!-- END_TF_DOCS -->