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
| [ncloud_cdss_config_group.cdss_config_group](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/cdss_config_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) ConfigGroup description. | `string` | `null` | no |
| <a name="input_kafka_version_code"></a> [kafka\_version\_code](#input\_kafka\_version\_code) | (Required) Cloud Data Streaming Service version to be used. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) ConfigGroup name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | ConfigGroup id. |
<!-- END_TF_DOCS -->