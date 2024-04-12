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
| [ncloud_block_storage_snapshot.block_storage_snapshot](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/block_storage_snapshot) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_block_storage_instance_no"></a> [block\_storage\_instance\_no](#input\_block\_storage\_instance\_no) | (Required) Block storage instance Number for creating snapshot. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | (Optional) Descriptions on a snapshot to create. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) Block storage snapshot name to create. default : Ncloud assigns default values. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_create_date"></a> [create\_date](#output\_create\_date) | Creation date of the block storage snapshot instance |
| <a name="output_instance_no"></a> [instance\_no](#output\_instance\_no) | Block Storage Snapshot Instance Number |
| <a name="output_instance_operation"></a> [instance\_operation](#output\_instance\_operation) | Block Storage Snapshot Instance Operation code |
| <a name="output_instance_status"></a> [instance\_status](#output\_instance\_status) | Block Storage Snapshot Instance Status code |
| <a name="output_instance_status_name"></a> [instance\_status\_name](#output\_instance\_status\_name) | Block Storage Snapshot Instance Status Name |
| <a name="output_original_block_storage_instance_no"></a> [original\_block\_storage\_instance\_no](#output\_original\_block\_storage\_instance\_no) | Original Block Storage Instance Number |
| <a name="output_original_block_storage_name"></a> [original\_block\_storage\_name](#output\_original\_block\_storage\_name) | Original Block Storage Name |
| <a name="output_os_information"></a> [os\_information](#output\_os\_information) | OS Information |
| <a name="output_server_image_product_code"></a> [server\_image\_product\_code](#output\_server\_image\_product\_code) | Server Image Product Code |
| <a name="output_volume_size"></a> [volume\_size](#output\_volume\_size) | Block Storage Snapshot Volume Size |
<!-- END_TF_DOCS -->