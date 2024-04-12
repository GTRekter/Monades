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
| [ncloud_route.route](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/route) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_destination_cidr_block"></a> [destination\_cidr\_block](#input\_destination\_cidr\_block) | (Required) Destination CIDR block, Set the destination IP address range for the route you want to add. (e.g. 0.0.0.0/0, 100.10.20.0/24) | `string` | n/a | yes |
| <a name="input_route_table_no"></a> [route\_table\_no](#input\_route\_table\_no) | (Required) The ID of the Route table. | `string` | n/a | yes |
| <a name="input_target_name"></a> [target\_name](#input\_target\_name) | (Required) Set the destination name for the destination type. | `string` | n/a | yes |
| <a name="input_target_no"></a> [target\_no](#input\_target\_no) | (Required) Set the destination identification number for the destination type. | `string` | n/a | yes |
| <a name="input_target_type"></a> [target\_type](#input\_target\_type) | (Required) Destination target type, Select the destination type of the route to add. Accepted values: NATGW (NAT Gateway) \| VPCPEERING (VPC Peering) \| VGW (Virtual Private Gateway). | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of Route. |
| <a name="output_is_default"></a> [is\_default](#output\_is\_default) | Whether is default or not by Route table creation. |
| <a name="output_vpc_no"></a> [vpc\_no](#output\_vpc\_no) | The ID of the associated VPC. |
<!-- END_TF_DOCS -->