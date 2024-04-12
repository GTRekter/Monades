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
| [ncloud_nks_node_pool.nks_node_pool](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/nks_node_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_autoscale"></a> [autoscale](#input\_autoscale) | (Optional) Auto scaling configuration.<br>  - enabled - (Required) Auto scaling availability.<br>  - max - (Required) Maximum number of nodes available for auto scaling.<br>  - min - (Required) Minimum number of nodes available for auto scaling. | <pre>object({<br>    enabled = bool<br>    max     = number<br>    min     = number<br>  })</pre> | `null` | no |
| <a name="input_cluster_uuid"></a> [cluster\_uuid](#input\_cluster\_uuid) | (Required) Cluster uuid. | `string` | n/a | yes |
| <a name="input_label"></a> [label](#input\_label) | (Optional) NodePool label.<br>  - key - (Required) Label key.<br>  - value - (Required) Label value. | <pre>object({<br>    key   = string<br>    value = string<br>  })</pre> | `null` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | (Required) Number of nodes. | `number` | n/a | yes |
| <a name="input_node_pool_name"></a> [node\_pool\_name](#input\_node\_pool\_name) | (Required) Node pool name. | `string` | n/a | yes |
| <a name="input_product_code"></a> [product\_code](#input\_product\_code) | (Optional) Product code. Required for XEN/RHV cluster nodepool. | `string` | `null` | no |
| <a name="input_software_code"></a> [software\_code](#input\_software\_code) | (Optional) Server image code. | `string` | `null` | no |
| <a name="input_taint"></a> [taint](#input\_taint) | (Optional) NodePool taint.<br>  - key - (Required) Taint key.<br>  - value - (Required) Taint value.<br>  - effect - (Required) Taint effect. | <pre>object({<br>    key    = string<br>    value  = string<br>    effect = string<br>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_version"></a> [container\_version](#output\_container\_version) | Container version of node. |
| <a name="output_id"></a> [id](#output\_id) | The ID of nodepool. (cluster\_uuid:node\_pool\_name) |
| <a name="output_instance_no"></a> [instance\_no](#output\_instance\_no) | The ID of server instance. |
| <a name="output_kernel_version"></a> [kernel\_version](#output\_kernel\_version) | kernel version of node. |
| <a name="output_name"></a> [name](#output\_name) | The name of Server instance. |
| <a name="output_node_status"></a> [node\_status](#output\_node\_status) | Node Status. |
| <a name="output_nodes"></a> [nodes](#output\_nodes) | Running nodes in nodepool. |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | Private IP. |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | Public IP. |
| <a name="output_spec"></a> [spec](#output\_spec) | Server spec. |
<!-- END_TF_DOCS -->