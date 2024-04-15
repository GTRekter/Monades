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
| [ncloud_redis_config_group.redis_config_group](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/redis_config_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) Redis Config Group description. 1-255 characters. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Redis Config Group name. Composed of lowercase alphabets, numbers, hyphen (-). Must start with an alphabetic character, and the last character can only be an English letter or number. 3-15 characters. | `string` | n/a | yes |
| <a name="input_redis_version"></a> [redis\_version](#input\_redis\_version) | (Required) Redis Service version. These values may change later. For example, 5.0.14-cluster \| 5.0.14-simple \| 7.0.13-cluster \| 7.0.13-simple | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Redis Config Group instance number. |
<!-- END_TF_DOCS -->