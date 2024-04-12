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
| [ncloud_lb_target_group_attachment.target_group_attachment](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/lb_target_group_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_target_group_no"></a> [target\_group\_no](#input\_target\_group\_no) | The ID of target group. | `string` | n/a | yes |
| <a name="input_target_no_list"></a> [target\_no\_list](#input\_target\_no\_list) | The List of server instance ID. | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of target |
<!-- END_TF_DOCS -->