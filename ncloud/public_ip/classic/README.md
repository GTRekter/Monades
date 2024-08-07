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
| [ncloud_public_ip.public_ip](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/public_ip) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) Public IP description. | `string` | `null` | no |
| <a name="input_server_instance_no"></a> [server\_instance\_no](#input\_server\_instance\_no) | (Optional) Server instance number to assign after creating a public IP. You can get one by calling getPublicIpTargetServerInstanceList. | `string` | `null` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | (Optional) Zone code. You can decide a zone where servers are created. You can decide in which zone the product list will be requested. default : Select the first Zone in the specific region Get available values using the data source ncloud\_zones. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of Public IP. |
| <a name="output_kind_type"></a> [kind\_type](#output\_kind\_type) | Public IP kind type |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | Public IP Address. |
| <a name="output_public_ip_no"></a> [public\_ip\_no](#output\_public\_ip\_no) | The ID of Public IP. (It is the same result as id) |
