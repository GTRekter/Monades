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
| [nhncloud_compute_instance_v2.compute_instance_v2](https://registry.terraform.io/providers/nhn-cloud/nhncloud/latest/docs/resources/compute_instance_v2) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | (Optional) The availability zone of an instance to create. | `string` | `null` | no |
| <a name="input_block_device"></a> [block\_device](#input\_block\_device) | (Optional) The block storage configuration for the instance. The block\_device block supports the following arguments:<br>- uuid: (Optional) The ID of the original block storage. Volumes or snapshots which cannot be used to create images, such as those with WAF, MS-SQL images as the source, cannot be used.<br>- source\_type: (Optional) The type of the original block storage to create. Options are 'image', 'volume', 'snapshot'.<br>- destination\_type: (Optional) Requires different settings depending on the location of instanceΓÇÖs block storage or flavor. Options are 'local' for U2 flavor, 'volume' for flavors other than U2.<br>- boot\_index: (Optional) The order to boot the specified block storage. The higher the number, the lower the booting priority.<br>- volume\_size: (Optional) The block storage size for the instance to create. Available from 20 GB to 2,000 GB (required if the flavor is U2).<br>- delete\_on\_termination: (Optional) true: When deleting an instance, delete a block device. false: When deleting an instance, do not delete a block. | <pre>list(object({<br>    uuid                  = optional(string)<br>    source_type           = string<br>    destination_type      = string<br>    boot_index            = number<br>    volume_size           = number<br>    delete_on_termination = bool<br>    nhn_encryption = optional(object({<br>      skm_appkey = string<br>      skm_key_id = string<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_flavor_id"></a> [flavor\_id](#input\_flavor\_id) | (Optional) The flavor ID of the instance to create. Required if flavor\_name is empty. | `string` | `null` | no |
| <a name="input_flavor_name"></a> [flavor\_name](#input\_flavor\_name) | (Optional) The flavor name of the instance to create. Required if flavor\_id is empty. | `string` | `null` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | (Optional) The image ID to use for creating an instance. Required if image\_name is empty. Available only when the flavor is U2. | `string` | `null` | no |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | (Optional) The image name to use for creating an instance. Required if image\_id is empty. Available only when the flavor is U2. | `string` | `null` | no |
| <a name="input_key_pair"></a> [key\_pair](#input\_key\_pair) | (Optional) The key pair name to use for accessing the instance. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the instance to create. | `string` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | (Optional) The network configuration for the instance. The network block supports the following arguments:<br>- name: (Optional) The name of the VPC network. One among network.name, network.uuid, and network.port must be specified.<br>- uuid: (Optional) The ID of the VPC. One among network.name, network.uuid, and network.port must be specified.<br>- port: (Optional) The ID of a port to be attached to VPC. One among network.name, network.uuid, and network.port must be specified. | <pre>list(object({<br>    name = optional(string)<br>    uuid = optional(string)<br>    port = optional(string)<br>  }))</pre> | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | (Optional) The region of the block storage to create. The default is the region configured in the provider. | `string` | `null` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | (Optional) List of the security group names for instance. | `list(string)` | `[]` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | (Optional) The script to be executed after instance booting and its configuration. Base64-encoded string, which allows up to 65535 bytes. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_access_ip_v4"></a> [instance\_access\_ip\_v4](#output\_instance\_access\_ip\_v4) | The first detected Fixed IPv4 address. |
| <a name="output_instance_access_ip_v6"></a> [instance\_access\_ip\_v6](#output\_instance\_access\_ip\_v6) | The first detected Fixed IPv6 address. |
| <a name="output_instance_availability_zone"></a> [instance\_availability\_zone](#output\_instance\_availability\_zone) | The availability zone of the compute instance. |
| <a name="output_instance_created"></a> [instance\_created](#output\_instance\_created) | The time when the instance was created. |
| <a name="output_instance_flavor_id"></a> [instance\_flavor\_id](#output\_instance\_flavor\_id) | The flavor ID of the compute instance. |
| <a name="output_instance_flavor_name"></a> [instance\_flavor\_name](#output\_instance\_flavor\_name) | The flavor name of the compute instance. |
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | The ID of the compute instance. |
| <a name="output_instance_image_id"></a> [instance\_image\_id](#output\_instance\_image\_id) | The image ID used for creating the compute instance. |
| <a name="output_instance_image_name"></a> [instance\_image\_name](#output\_instance\_image\_name) | The image name used for creating the compute instance. |
| <a name="output_instance_key_pair"></a> [instance\_key\_pair](#output\_instance\_key\_pair) | The key pair name used for accessing the compute instance. |
| <a name="output_instance_name"></a> [instance\_name](#output\_instance\_name) | The name of the compute instance. |
| <a name="output_instance_network_name"></a> [instance\_network\_name](#output\_instance\_network\_name) | The name of the VPC network attached to the compute instance. |
| <a name="output_instance_network_port"></a> [instance\_network\_port](#output\_instance\_network\_port) | The ID of a port attached to the VPC. |
| <a name="output_instance_network_uuid"></a> [instance\_network\_uuid](#output\_instance\_network\_uuid) | The ID of the VPC attached to the compute instance. |
| <a name="output_instance_security_groups"></a> [instance\_security\_groups](#output\_instance\_security\_groups) | The security group names associated with the compute instance. |
| <a name="output_instance_updated"></a> [instance\_updated](#output\_instance\_updated) | The time when the instance was last updated. |
