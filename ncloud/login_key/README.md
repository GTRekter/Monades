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
| [ncloud_login_key.login_key](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/login_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | (Required) Key name to generate. If the generated key name exists, an error occurs. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_fingerprint"></a> [fingerprint](#output\_fingerprint) | Fingerprint of the login key |
| <a name="output_id"></a> [id](#output\_id) | The ID of login key. |
| <a name="output_private_key"></a> [private\_key](#output\_private\_key) | Generated private key |
<!-- END_TF_DOCS -->