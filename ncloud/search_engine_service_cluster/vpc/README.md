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
| [ncloud_ses_cluster.ses_cluster](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/ses_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | (Required) Cluster name. | `string` | n/a | yes |
| <a name="input_data_node"></a> [data\_node](#input\_data\_node) | (Required) Data node configuration.<br>- product\_code - (Required) HW specifications of the data node.<br>- subnet\_no - (Required) Subnet number where the data node is to be located.<br>- count - (Required) Number of data nodes. At least 3 units. (Can only be increased)<br>- storage\_size - (Required) Data node storage capacity. At least 100 GB, up to 2000 GB. Must be in units of 10 GB. | <pre>object({<br>        product_code    = string<br>        subnet_no       = string<br>        count           = number<br>        storage_size    = number<br>    })</pre> | n/a | yes |
| <a name="input_login_key_name"></a> [login\_key\_name](#input\_login\_key\_name) | (Required) Login key to access Manager node server. | `string` | n/a | yes |
| <a name="input_manager_node"></a> [manager\_node](#input\_manager\_node) | (Required) Manager node configuration.<br>- is\_dual\_manager - (Required) Redundancy of manager node.<br>- product\_code - (Required) HW specifications of the manager node.<br>- subnet\_no - (Required) Subnet number where the manager node is to be located. | <pre>object({<br>        is_dual_manager = bool<br>        product_code    = string<br>        subnet_no       = string<br>    })</pre> | n/a | yes |
| <a name="input_master_node"></a> [master\_node](#input\_master\_node) | (Optional) Master node configuration.<br>- product\_code - (Required) HW specifications of the master node.<br>- subnet\_no - (Required) Subnet number where the master node is to be located.<br>- count - (Required) Number of master nodes. Only 3 or 5 units are available. | <pre>object({<br>        product_code    = string<br>        subnet_no       = string<br>        count           = number<br>    })</pre> | n/a | yes |
| <a name="input_os_image_code"></a> [os\_image\_code](#input\_os\_image\_code) | (Required) OS type to be used. | `string` | n/a | yes |
| <a name="input_search_engine"></a> [search\_engine](#input\_search\_engine) | (Required) Search Engine Service configuration.<br>- version\_code - (Required) Search Engine Service version to be used.<br>- user\_name - (Required) Search Engine UserName. Only lowercase alphanumeric characters and non-consecutive hyphens (-) allowed First character must be a letter, but the last character may be a letter or a number.<br>- user\_password - (Required) Search Engine User password. Must be at least 8 characters and contain at least one of each: English uppercase letter, lowercase letter, special character, and number.<br>- dashboard\_port - (Required) Search Engine Dashboard port. | <pre>object({<br>        version_code    = string<br>        user_name       = string<br>        user_password   = string<br>        dashboard_port  = string<br>    })</pre> | n/a | yes |
| <a name="input_vpc_no"></a> [vpc\_no](#input\_vpc\_no) | (Required) VPC number to be used. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_node_list"></a> [cluster\_node\_list](#output\_cluster\_node\_list) | Cluster node information.<br>        - compute\_instance\_name: The name of Server instance.<br>        - compute\_instance\_no: The ID of Server instance.<br>        - node\_type: Node role code<br>        - private\_ip: Private IP<br>        - server\_status: The status of Server Instance.<br>        - subnet: The name of Server Instance subnet. |
| <a name="output_data_node"></a> [data\_node](#output\_data\_node) | Data node information.<br>    - acg\_id: The ID of data node ACG.<br>    - acg\_name: The name of data node ACG. |
| <a name="output_id"></a> [id](#output\_id) | Cluster Instance No. |
| <a name="output_manager_node"></a> [manager\_node](#output\_manager\_node) | Manager node information.<br>    - acg\_id: The ID of manager node ACG.<br>    - acg\_name: The name of manager node ACG. |
| <a name="output_manager_node_instance_no_list"></a> [manager\_node\_instance\_no\_list](#output\_manager\_node\_instance\_no\_list) | List of Manager node's instance number |
| <a name="output_master_node"></a> [master\_node](#output\_master\_node) | Master node information.<br>        - acg\_id: The ID of master node ACG.<br>        - acg\_name: The name of master node ACG. |
| <a name="output_service_group_instance_no"></a> [service\_group\_instance\_no](#output\_service\_group\_instance\_no) | Cluster Instance No. (It is the same result as id) |
<!-- END_TF_DOCS -->