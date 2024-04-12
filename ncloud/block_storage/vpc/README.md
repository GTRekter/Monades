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
| [ncloud_block_storage.block_storage](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/block_storage) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) description to create. | `string` | `null` | no |
| <a name="input_disk_detail_type"></a> [disk\_detail\_type](#input\_disk\_detail\_type) | (Optional) Type of block storage disk detail to create. Default SSD. Accepted values: SSD \| HDD | `string` | `"SSD"` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name to create. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_server_instance_no"></a> [server\_instance\_no](#input\_server\_instance\_no) | (Required) When first created. (Optional) After creation. Server instance ID to which you want to assign the block storage. | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | (Required) The size of the block storage to create. It is automatically set when you take a snapshot. | `string` | n/a | yes |
| <a name="input_stop_instance_before_detaching"></a> [stop\_instance\_before\_detaching](#input\_stop\_instance\_before\_detaching) | (Optional, Boolean) Set this to true to ensure that the target instance is stopped before trying to detach the block storage. It stops the instance, if it is not already stopped. > If stop\_instance\_before\_detaching is true, server will be stopped and will not start automatically. User must start server instance manually via NCLOUD console or API. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_block_storage_no"></a> [block\_storage\_no](#output\_block\_storage\_no) | The ID of Block storage instance. (It is the same result as id) |
| <a name="output_device_name"></a> [device\_name](#output\_device\_name) | Device name. |
| <a name="output_disk_type"></a> [disk\_type](#output\_disk\_type) | Disk type code. |
| <a name="output_id"></a> [id](#output\_id) | The ID of Block storage instance. |
| <a name="output_product_code"></a> [product\_code](#output\_product\_code) | Block storage product code. |
| <a name="output_server_name"></a> [server\_name](#output\_server\_name) | Server name. |
| <a name="output_status"></a> [status](#output\_status) | Block storage instance status code. |
| <a name="output_type"></a> [type](#output\_type) | Block storage type code. |
<!-- END_TF_DOCS -->