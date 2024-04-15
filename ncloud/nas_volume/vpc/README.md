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
| [ncloud_nas_volume.nas_volume](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/nas_volume) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cifs_user_name"></a> [cifs\_user\_name](#input\_cifs\_user\_name) | (Optional) CIFS user name. The ID must contain a combination of English alphabet and numbers, which can be 6-19 characters in length. | `string` | `null` | no |
| <a name="input_cifs_user_password"></a> [cifs\_user\_password](#input\_cifs\_user\_password) | (Optional) CIFS user password. The password must contain a combination of at least 2 English letters, numbers and special characters, which can be 8-14 characters in length. | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) NAS volume description. 1-1000 characters. | `string` | `null` | no |
| <a name="input_is_encrypted_volume"></a> [is\_encrypted\_volume](#input\_is\_encrypted\_volume) | (Optional) Volume encryption. Default false. | `bool` | `false` | no |
| <a name="input_return_protection"></a> [return\_protection](#input\_return\_protection) | (Optional) Termination protection status. Default false | `bool` | `false` | no |
| <a name="input_server_instance_no_list"></a> [server\_instance\_no\_list](#input\_server\_instance\_no\_list) | (Optional) List of server instance numbers where you want to mount the NAS volume. | `list(string)` | `[]` | no |
| <a name="input_volume_allotment_protocol_type"></a> [volume\_allotment\_protocol\_type](#input\_volume\_allotment\_protocol\_type) | (Required) Volume allotment protocol type code. NFS \| CIFS NFS: You can mount the volume in a Linux server such as CentOS and Ubuntu. CIFS: You can mount the volume in a Windows server. | `string` | n/a | yes |
| <a name="input_volume_name_postfix"></a> [volume\_name\_postfix](#input\_volume\_name\_postfix) | (Required) Name of a NAS volume to create. Enter a volume name that is 3-20 characters in length after entering the name for user identification. | `string` | n/a | yes |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | (Required) NAS volume size. The default capacity of a volume ranges from 500 GB to 10,000 GB. Additions can be made in units of 100 GB. | `number` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | (Optional) Zone code. Zone in which you want to create a NAS volume. Default: The first zone of the region. Get available values using the data source ncloud\_zones. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of NAS Volume. |
| <a name="output_is_event_configuration"></a> [is\_event\_configuration](#output\_is\_event\_configuration) | Indicates whether the event is set. |
| <a name="output_is_snapshot_configuration"></a> [is\_snapshot\_configuration](#output\_is\_snapshot\_configuration) | Indicates whether a snapshot volume is set. |
| <a name="output_mount_information"></a> [mount\_information](#output\_mount\_information) | Mount information for NAS volume. |
| <a name="output_name"></a> [name](#output\_name) | NAS volume name. |
| <a name="output_nas_volume_no"></a> [nas\_volume\_no](#output\_nas\_volume\_no) | The ID of NAS Volume. (It is the same result as id) |
| <a name="output_snapshot_volume_size"></a> [snapshot\_volume\_size](#output\_snapshot\_volume\_size) | Snapshot volume size, in GiB |
| <a name="output_volume_total_size"></a> [volume\_total\_size](#output\_volume\_total\_size) | Volume total size, in GiB |
<!-- END_TF_DOCS -->