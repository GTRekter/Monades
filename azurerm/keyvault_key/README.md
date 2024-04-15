<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.47.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.47.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault_key.key_vault_key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_key) | resource |
| [azurerm_key_vault.key_vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_curve"></a> [curve](#input\_curve) | The EC Curve name of this Key Vault Key. Valid values are: P-256, P-256K, P-384, P-521. | `string` | `null` | no |
| <a name="input_expiration_date"></a> [expiration\_date](#input\_expiration\_date) | Specifies the Expiration date of this Key Vault Key. | `string` | `null` | no |
| <a name="input_key_opts"></a> [key\_opts](#input\_key\_opts) | A list of JSON web key operations assigned to this Key Vault Key. Valid values are: decrypt, encrypt, sign, unwrapKey, verify, wrapKey. | `list(string)` | n/a | yes |
| <a name="input_key_size"></a> [key\_size](#input\_key\_size) | Specifies the Size of this Key Vault Key. Valid values are: 2048, 3072, 4096, 5120, 6144, 7168, 8192. | `number` | `2048` | no |
| <a name="input_key_type"></a> [key\_type](#input\_key\_type) | Specifies the Key Type of this Key Vault Key. Valid values are: RSA, RSA-HSM, EC, EC-HSM. | `string` | `"RSA"` | no |
| <a name="input_key_vault_name"></a> [key\_vault\_name](#input\_key\_vault\_name) | The Name of the Key Vault instance where the Secret resides, available on the azurerm\_key\_vault Data Source / Resource. NOTE: The vault must be in the same subscription as the provider. If the vault is in another subscription, you must create an aliased provider for that subscription. | `string` | n/a | yes |
| <a name="input_key_vault_resource_group_name"></a> [key\_vault\_resource\_group\_name](#input\_key\_vault\_resource\_group\_name) | The Resource Group Name of the Key Vault instance where the Secret resides, available on the azurerm\_key\_vault Data Source / Resource. NOTE: The vault must be in the same subscription as the provider. If the vault is in another subscription, you must create an aliased provider for that subscription. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the Key Vault Key. | `string` | `"generated-certificate"` | no |
| <a name="input_not_before_date"></a> [not\_before\_date](#input\_not\_before\_date) | Specifies the Not Before date of this Key Vault Key. | `string` | `null` | no |
| <a name="input_rotation_policy"></a> [rotation\_policy](#input\_rotation\_policy) | Specifies the Rotation Policy of this Key Vault Key. | <pre>object({<br>    automatic = optional(object({<br>      time_before_expiry  = optional(string)<br>      time_after_creation = optional(string)<br>    }))<br>    expire_after         = optional(string)<br>    notify_before_expiry = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags assigned to this Key Vault Key. | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_vault_key_id"></a> [key\_vault\_key\_id](#output\_key\_vault\_key\_id) | The ID of the created Key Vault Key |
| <a name="output_key_vault_key_name"></a> [key\_vault\_key\_name](#output\_key\_vault\_key\_name) | The name of the created Key Vault Key |
| <a name="output_key_vault_key_version"></a> [key\_vault\_key\_version](#output\_key\_vault\_key\_version) | The version of the created Key Vault Key |
<!-- END_TF_DOCS -->