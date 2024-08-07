## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nhncloud"></a> [nhncloud](#provider\_nhncloud) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nhncloud_blockstorage_volume_v2.block_storage_volume_v2](https://registry.terraform.io/providers/nhn-cloud/nhncloud/latest/docs/resources/blockstorage_volume_v2) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | (Optional) The availability zone of the block storage to create. If the value does not exist, random availability zone is used. | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) The description of the block storage. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name of the block storage to create. | `string` | `null` | no |
| <a name="input_nhn_encryption"></a> [nhn\_encryption](#input\_nhn\_encryption) | (Optional) The encryption configuration for the block storage. The encryption block supports the following arguments:<br>- skm\_appkey: (Required) The appKeys for Secure Key Manager products.<br>- skm\_key\_id: (Required) The key ID in Secure Key Manager. | <pre>object({<br>    skm_appkey = string<br>    skm_key_id = string<br>  })</pre> | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | (Optional) The region of the block storage to create. The default is the region configured in the provider. | `string` | `null` | no |
| <a name="input_size"></a> [size](#input\_size) | (Required) The size of the block storage to create (GB). | `number` | n/a | yes |
| <a name="input_snapshot_id"></a> [snapshot\_id](#input\_snapshot\_id) | (Optional) The snapshot ID from which to create the block storage. | `string` | `null` | no |
| <a name="input_volume_type"></a> [volume\_type](#input\_volume\_type) | (Optional) The type of the block storage. Options are 'General HDD', 'General SSD', 'Encrypted HDD', 'Encrypted SSD'. | `string` | `"General HDD"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_volume_availability_zone"></a> [volume\_availability\_zone](#output\_volume\_availability\_zone) | The availability zone of the block storage volume. |
| <a name="output_volume_description"></a> [volume\_description](#output\_volume\_description) | The description of the block storage volume. |
| <a name="output_volume_id"></a> [volume\_id](#output\_volume\_id) | The ID of the block storage volume. |
| <a name="output_volume_name"></a> [volume\_name](#output\_volume\_name) | The name of the block storage volume. |
| <a name="output_volume_size"></a> [volume\_size](#output\_volume\_size) | The size of the block storage volume. |
| <a name="output_volume_snapshot_id"></a> [volume\_snapshot\_id](#output\_volume\_snapshot\_id) | The snapshot ID from which the block storage volume was created. |
| <a name="output_volume_type"></a> [volume\_type](#output\_volume\_type) | The type of the block storage volume. |
