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
| [ncloud_cdss_cluster.cdss_cluster](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/cdss_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_broker_nodes"></a> [broker\_nodes](#input\_broker\_nodes) | (Required) Broker node information.<br>  - node\_product\_code - (Required) HW specifications of the broker node.<br>  - subnet\_no - (Required) Subnet number where the broker node is to be located.<br>  - node\_count - (Required) Number of broker nodes. At least 3 units, up to 10 units allowed.<br>  - storage\_size - (Required) Broker node storage capacity. At least 100 GB, up to 2000 GB. Must be in units of 10 GB. | <pre>object({<br>    node_product_code = string<br>    subnet_no         = string<br>    node_count        = number<br>    storage_size      = number<br>  })</pre> | n/a | yes |
| <a name="input_cmak"></a> [cmak](#input\_cmak) | (Required) CMAK access information.<br>  - user\_name - (Required) CMAK access ID. Only lowercase alphanumeric characters and non-consecutive hyphens (-) allowed First character must be a letter, but the last character may be a letter or a number.<br>  - user\_password - (Required) CMAK access password. Must be at least 8 characters and contain at least one of each: English uppercase letter, lowercase letter, special character, and number. | <pre>object({<br>    user_name     = string<br>    user_password = string<br>  })</pre> | n/a | yes |
| <a name="input_config_group_no"></a> [config\_group\_no](#input\_config\_group\_no) | (Required) ConfigGroup number to be used. | `string` | n/a | yes |
| <a name="input_kafka_version_code"></a> [kafka\_version\_code](#input\_kafka\_version\_code) | (Required) Cloud Data Streaming Service version to be used. | `string` | n/a | yes |
| <a name="input_manager_node"></a> [manager\_node](#input\_manager\_node) | (Required) Manager node information.<br>  - node\_product\_code - (Required) HW specifications of the manager node.<br>  - subnet\_no - (Required) Subnet number where the manager node is to be located. | <pre>object({<br>    node_product_code = string<br>    subnet_no         = string<br>  })</pre> | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) Cluster name. | `string` | n/a | yes |
| <a name="input_os_image"></a> [os\_image](#input\_os\_image) | (Required) OS type to be used. | `string` | n/a | yes |
| <a name="input_vpc_no"></a> [vpc\_no](#input\_vpc\_no) | (Required) VPC number to be used. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoints"></a> [endpoints](#output\_endpoints) | List of endpoints<br>-plaintext - List of broker nodes (Port 9092).<br>-tls - List of broker nodes (Port 9093).<br>-public\_endpoint\_plaintext - List of public endpoint of broker nodes.<br>-public\_endpoint\_plaintext\_listener\_port - List of listener port for public endpoint of broker nodes.<br>-public\_endpoint\_tls - List of public endpoint of broker nodes (TLS).<br>-public\_endpoint\_tls\_listener\_port - List of listener port for public endpoint of broker nodes (TLS).<br>-hosts\_private\_endpoint\_tls - Editing details of the hosts file (Private IP hostname format).<br>-hosts\_public\_endpoint\_tls - Editing details of the hosts file (Public IP hostname format).<br>-zookeeper - List of ZooKeeper nodes (Port 2181). |
| <a name="output_id"></a> [id](#output\_id) | Cluster id. |
<!-- END_TF_DOCS -->