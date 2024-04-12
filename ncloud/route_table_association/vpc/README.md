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
| [ncloud_route_table_association.route_table_association](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/route_table_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_route_table_no"></a> [route\_table\_no](#input\_route\_table\_no) | (Required) The ID of the Route Table. | `string` | n/a | yes |
| <a name="input_subnet_no"></a> [subnet\_no](#input\_subnet\_no) | (Required) The ID of Subnet to create association. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Route table association. |
<!-- END_TF_DOCS -->