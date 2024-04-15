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
| [ncloud_redis.redis](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/redis) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backup_file_retention_period"></a> [backup\_file\_retention\_period](#input\_backup\_file\_retention\_period) | (Optional) Backups are performed on a daily basis, and backup files are stored in a separate backup storage. Charges are based on the storage space used. Default: 1 (1 day) | `number` | `1` | no |
| <a name="input_backup_time"></a> [backup\_time](#input\_backup\_time) | (Optional, Required if is\_backup is true and is\_automatic\_backup is false) You can set the time when backup is performed. it must be entered if backup status(is\_backup) is true and automatic backup status(is\_automatic\_backup) is false. EX) 01:15 | `string` | `null` | no |
| <a name="input_config_group_no"></a> [config\_group\_no](#input\_config\_group\_no) | (Required) Redis Config Group number. Config groups are provided, and one cluster group uses the same config. A new config group must be created if none exists. It can be changed online after creation. | `string` | n/a | yes |
| <a name="input_image_product_code"></a> [image\_product\_code](#input\_image\_product\_code) | (Optional) Image product code to determine the Redis instance server image specification to create. If not entered, the instance is created for default value. It can be obtained through data.ncloud\_redis\_image\_products. | `string` | `null` | no |
| <a name="input_is_automatic_backup"></a> [is\_automatic\_backup](#input\_is\_automatic\_backup) | (Optional) Select whether to have backup times set automatically. When the automatic backup is true, then any backup\_time entered is ignored and the backup time is configured automatically. | `bool` | `false` | no |
| <a name="input_is_backup"></a> [is\_backup](#input\_is\_backup) | (Optional) Backup status. If the high availability status is\_ha is true, then the backup setting status is fixed as true. Default : false | `bool` | `false` | no |
| <a name="input_is_ha"></a> [is\_ha](#input\_is\_ha) | (Optional) Whether is High Availability or not. The Cloud DB for Redis product supports automatic failure recovery using the Standby master. When high availability is supported, additional charges are incurred and backup is automatically configured. Default: false | `bool` | `false` | no |
| <a name="input_mode"></a> [mode](#input\_mode) | (Required) Determines the configuration of Cloud DB for Redis. When the CLUSTER setting is used, the is\_ha setting is ignored. Options: CLUSTER, SIMPLE. | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | Cloud Redis port. You need to enter the TCP port number of Redis access. Value range: 6379 or Min: 10000, Max: 20000. Default: 6379 | `number` | `6379` | no |
| <a name="input_product_code"></a> [product\_code](#input\_product\_code) | (Optional) Sets the server specifications of the Cloud DB for Redis instance to be created. It can be obtained through data.ncloud\_redis\_products. Default : Minimum specifications(1 memory, 2 cpu) | `string` | `null` | no |
| <a name="input_server_name_prefix"></a> [server\_name\_prefix](#input\_server\_name\_prefix) | (Required) Enter the name prefix of the Redis Server. The Redis server name is created with a 3-digit number, which is automatically created. You cannot double-use the Redis Server name. It must only contain English letters (lowercase), numbers, and hyphens (-). It must start with an English letter and end with an English letter or a number. Min: 3, Max: 15 | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | (Required) Service name to create. Enter the group name of the Redis server (e.g., NAVER-HOME). You cannot double-use the Redis service name. Only alphanumeric characters, numbers, hyphens (-), and Korean characters are allowed. Min: 3, Max: 15 | `string` | n/a | yes |
| <a name="input_shard_copy_count"></a> [shard\_copy\_count](#input\_shard\_copy\_count) | (Optional) Replicas per shard Redis Cluster consists of the master node and slave node. A slave node is necessary for HA. When adding a replica, one slave node is assigned to each master node. For example, 3 shards, 1 replica per shard -> Master node: 3, Slave node: 3. You can enter 0 to 4 replica(s) for each shard. If the number of replicas per shard is set to 0, then high availability can't be supported. Necessary only if the mode is CLUSTER. Default: 0 | `number` | `null` | no |
| <a name="input_shard_count"></a> [shard\_count](#input\_shard\_count) | (Optional) Number of shards to be created. 3 to 10 Number of master nodes. Necessary only if the mode is CLUSTER. Default: 3 | `number` | `null` | no |
| <a name="input_subnet_no"></a> [subnet\_no](#input\_subnet\_no) | (Required) The ID of the associated Subnet. Subnet transfer is not possible after a Cloud DB for Redis instance has been created. | `string` | n/a | yes |
| <a name="input_user_name"></a> [user\_name](#input\_user\_name) | (Optional, Required if gov site) Redis User ID. Available only gov site. Only English alphabets, numbers and special characters ( \_ , - ) are allowed and must start with an English alphabet. Min: 4, Max: 16 | `string` | `null` | no |
| <a name="input_user_password"></a> [user\_password](#input\_user\_password) | (Optional, Required if gov site) Redis User Password. Available only gov site. At least one English alphabet, number and special character must be included. Min: 8, Max: 20 | `string` | `null` | no |
| <a name="input_vpc_no"></a> [vpc\_no](#input\_vpc\_no) | (Required) VPC number. Determining the VPC in which the Cloud DB for Redis instance will be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_control_group_no_list"></a> [access\_control\_group\_no\_list](#output\_access\_control\_group\_no\_list) | The ID list of the associated Access Control Group. |
| <a name="output_backup_schedule"></a> [backup\_schedule](#output\_backup\_schedule) | Automatic or User-defined. |
| <a name="output_id"></a> [id](#output\_id) | Redis instance number. |
| <a name="output_redis_server_list"></a> [redis\_server\_list](#output\_redis\_server\_list) | The list of the Redis server.<br>- redis\_server\_instance\_no: Redis Server instance number.<br>- redis\_server\_name: Redis Server name.<br>- redis\_server\_role: Stand Alone or Master or Slave.<br>- private\_domain: Private domain.<br>- memory\_size: Available memory size.<br>- os\_memory\_size: OS memory size.<br>- uptime: Running start time.<br>- create\_date: Server create date. |
| <a name="output_region_code"></a> [region\_code](#output\_region\_code) | Region code. |
<!-- END_TF_DOCS -->