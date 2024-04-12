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
| [ncloud_placement_group.placement_group](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/placement_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name to create. If omitted, Terraform will assign a random, unique name. | `string` | n/a | yes |
| <a name="input_placement_group_type"></a> [placement\_group\_type](#input\_placement\_group\_type) | (Optional) Type of placement group. Default AA. Accepted values: AA | `string` | `"AA"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Placement group. |
| <a name="output_placement_group_no"></a> [placement\_group\_no](#output\_placement\_group\_no) | The ID of the Placement group. (It is the same result as id) |
<!-- END_TF_DOCS -->