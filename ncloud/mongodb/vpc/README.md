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
| [ncloud_mongodb.mongodb](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/mongodb) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_arbiter_product_code"></a> [arbiter\_product\_code](#input\_arbiter\_product\_code) | (Optional) Arbiter server product code. It can be obtained through data.ncloud\_mongodb\_products. Default: select the minimum specifications and must be based on 1. Memory and 2. CPU | `string` | `null` | no |
| <a name="input_arbiter_server_count"></a> [arbiter\_server\_count](#input\_arbiter\_server\_count) | (Optional, Changeable) The number of MongoDB Arbiter servers. You can select whether to use the Arbiter server per Replica Set (for each shard in the case of Sharding). Up to one Arbiter server can be selected. The Arbiter server is provided with a minimum configurable spec. Default: 0, Min: 0, Max: 1 | `number` | `0` | no |
| <a name="input_backup_file_retention_period"></a> [backup\_file\_retention\_period](#input\_backup\_file\_retention\_period) | (Optional) Backups are performed daily and backup files are stored in separate backup storage. Fees are charged based on the space used. Default: 1(1 day), Min: 1, Max: 30 | `number` | `1` | no |
| <a name="input_backup_time"></a> [backup\_time](#input\_backup\_time) | (Optional) You can set the time when backup is performed. Default: '02:00' in HHMM format. Times must be entered in 15-minute increments. | `string` | `"02:00"` | no |
| <a name="input_cluster_type_code"></a> [cluster\_type\_code](#input\_cluster\_type\_code) | (Required) MongoDB cluster type code determines the cluster type of MongoDB. Options: STAND\_ALONE \| SINGLE\_REPLICA\_SET \| SHARDED\_CLUSTER | `string` | n/a | yes |
| <a name="input_config_product_code"></a> [config\_product\_code](#input\_config\_product\_code) | (Optional) Config server product code. It can be obtained through data.ncloud\_mongodb\_products. Default: select the minimum specifications and must be based on 1. Memory and 2. CPU | `string` | `null` | no |
| <a name="input_config_server_count"></a> [config\_server\_count](#input\_config\_server\_count) | (Optional, Changeable) The number of MongoDB Config servers. If sharding is used, the config server count can be defined and must initially be exactly 3. After the initial setup, the count can be adjusted between 3 and 7. | `number` | `null` | no |
| <a name="input_data_storage_type"></a> [data\_storage\_type](#input\_data\_storage\_type) | (Optional) Data storage type. If the generation code is 'G2', you can select either 'SSD' or 'HDD'. If the generation code is 'G3', you can select 'CB1'. It can also be left as null if no specific storage type is needed. Default: 'SSD' for G2, 'CB1' for G3, and 'null' for unspecified. | `string` | `null` | no |
| <a name="input_image_product_code"></a> [image\_product\_code](#input\_image\_product\_code) | (Optional) MongoDB image product code. If not entered, it is created as a default value. It can be obtained through data.ncloud\_mongodb\_image\_products. | `string` | `null` | no |
| <a name="input_member_port"></a> [member\_port](#input\_member\_port) | (Optional) TCP port number for access to the MongoDB Member Server. Default: 17017, Min: 10000, Max: 65535 | `number` | `17017` | no |
| <a name="input_member_product_code"></a> [member\_product\_code](#input\_member\_product\_code) | (Optional) Member server product code. It can be obtained through data.ncloud\_mongodb\_products. Default: select the minimum specifications and must be based on 1. Memory and 2. CPU | `string` | `null` | no |
| <a name="input_member_server_count"></a> [member\_server\_count](#input\_member\_server\_count) | (Optional, Changeable) The number of MongoDB Member Servers. The number of member servers per replica set (or per shard if sharding) can be defined. Selectable between 3 to 7, including arbiter servers. Default : 3, Min: 2, Max: 7 | `number` | `3` | no |
| <a name="input_mongos_product_code"></a> [mongos\_product\_code](#input\_mongos\_product\_code) | (Optional) Mongos server product code. It can be obtained through data.ncloud\_mongodb\_products. Default: select the minimum specifications and must be based on 1. Memory and 2. CPU | `string` | `null` | no |
| <a name="input_mongos_server_count"></a> [mongos\_server\_count](#input\_mongos\_server\_count) | (Optional, Changeable) The number of MongoDB Mongos servers. If sharding is used, the number of mongos servers can be selected between 2 and 5. If sharding is not used, this value should be set to null. | `number` | `null` | no |
| <a name="input_server_name_prefix"></a> [server\_name\_prefix](#input\_server\_name\_prefix) | (Required) Enter the name prefix of the MongoDb Server. It is created with random text added after the transferred cloudMongoDbServerNamePrefix value to avoid duplicated host names. It must only contain English letters (lowercase), numbers, and hyphens (-). It must start with an English letter and end with an English letter or a number. Min: 3, Max: 15 | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | (Required) Service name to create. Enter group name of DB server. Specify the replica set name with the entered DB service name. Only alphanumeric characters, numbers, hyphens (-), and Korean characters are allowed. Duplicate names and changes after creation are prohibited. Min: 3, Max: 15 | `string` | n/a | yes |
| <a name="input_shard_count"></a> [shard\_count](#input\_shard\_count) | (Optional, Changeable) The number of MongoDB Shards. The number of shards can be defined for sharding. Only 2 or 3 are allowed for the initial configuration. Only enter when cluster\_type\_code is SHARDED\_CLUSTER. Default: 2, Min: 2, Max: 5 | `number` | `null` | no |
| <a name="input_subnet_no"></a> [subnet\_no](#input\_subnet\_no) | (Required) The ID of the associated Subnet. | `string` | n/a | yes |
| <a name="input_user_name"></a> [user\_name](#input\_user\_name) | (Required) Username for access. Must assign username in the role of DB admin. Only English letters, numbers, underscores (\_), and hyphens (-) are allowed and it must start with an English letter. Min: 4, Max: 16 | `string` | n/a | yes |
| <a name="input_user_password"></a> [user\_password](#input\_user\_password) | (Required) Password for access. Must assign password of the username in the role of DB admin. It must have at least 1 English letter, 1 number, and 1 special character.  space. Min: 8, Max: 20 | `string` | n/a | yes |
| <a name="input_vpc_no"></a> [vpc\_no](#input\_vpc\_no) | (Required) The ID of the associated Vpc. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_control_group_no_list"></a> [access\_control\_group\_no\_list](#output\_access\_control\_group\_no\_list) | The ID list of the associated Access Control Group. |
| <a name="output_arbiter_port"></a> [arbiter\_port](#output\_arbiter\_port) | TCP port number for access to the MongoDB Arbiter Server. |
| <a name="output_engine_version"></a> [engine\_version](#output\_engine\_version) | Engine Version. |
| <a name="output_id"></a> [id](#output\_id) | The ID of MongoDB instance. |
| <a name="output_mongodb_server_list"></a> [mongodb\_server\_list](#output\_mongodb\_server\_list) | The list of the MongoDB server.<br>- server\_instance\_no - Server instance number.<br>- server\_name - Server name.<br>- server\_role - Member or Arbiter or Mongos or Config.<br>- cluster\_role - STAND\_ALONE or SINGLE\_REPLICA\_SET or SHARD or CONFIG or MONGOS.<br>- product\_code - Product code.<br>- private\_domain - Private domain.<br>- public\_domain - Public domain.<br>- replica\_set\_name - Replica set name.<br>- memory\_size - Available memory size.<br>- cpu\_count - CPU count.<br>- data\_storage\_size - Storage size.<br>- uptime - Running start time.<br>- create\_date - Server create date. |
| <a name="output_region_code"></a> [region\_code](#output\_region\_code) | Region code. |
| <a name="output_zone_code"></a> [zone\_code](#output\_zone\_code) | Zone code. |
<!-- END_TF_DOCS -->