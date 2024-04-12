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
| [ncloud_load_balancer_ssl_certificate.ssl_certificate](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/load_balancer_ssl_certificate) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_chain"></a> [certificate\_chain](#input\_certificate\_chain) | (Optional) Chainca certificate (Required if the certificate is issued with a chainca) | `string` | `null` | no |
| <a name="input_certificate_name"></a> [certificate\_name](#input\_certificate\_name) | (Required) Name of a certificate | `string` | n/a | yes |
| <a name="input_privatekey"></a> [privatekey](#input\_privatekey) | (Required) Private key for a certificate | `string` | n/a | yes |
| <a name="input_publickey_certificate"></a> [publickey\_certificate](#input\_publickey\_certificate) | (Required) Public key for a certificate | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->