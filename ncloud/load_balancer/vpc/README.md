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
| [ncloud_lb.load_balancer](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/lb) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) The description of the load balancer. | `string` | `null` | no |
| <a name="input_idle_timeout"></a> [idle\_timeout](#input\_idle\_timeout) | (Optional) The time in seconds that the idle timeout. Valid only if the load balancer type is not NETWORK. Default: 60. | `number` | `60` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the load balancer. | `string` | n/a | yes |
| <a name="input_network_type"></a> [network\_type](#input\_network\_type) | (Optional) The network type of load balancer to create. Accepted values: PUBLIC \| PRIVATE. Default: PUBLIC. | `string` | `"PUBLIC"` | no |
| <a name="input_subnet_no_list"></a> [subnet\_no\_list](#input\_subnet\_no\_list) | (Required) A list of IDs in the associated Subnets. | `list(string)` | n/a | yes |
| <a name="input_throughput_type"></a> [throughput\_type](#input\_throughput\_type) | (Optional) The performance type code of load balancer. Accepted values: SMALL \| MEDIUM \| LARGE. If the load balancer type is NETWORK and the load balancer network type is PRIVATE, only SMALL can be selected. Default: SMALL. | `string` | `"SMALL"` | no |
| <a name="input_type"></a> [type](#input\_type) | (Required) The type of load balancer to create. Accepted values: APPLICATION \| NETWORK \| NETWORK\_PROXY. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_domain"></a> [domain](#output\_domain) | Domain name of Load Balancer |
| <a name="output_id"></a> [id](#output\_id) | The ID of Load Balancer. |
| <a name="output_ip_list"></a> [ip\_list](#output\_ip\_list) | A list of IP address of Load Balancer |
| <a name="output_load_balancer_no"></a> [load\_balancer\_no](#output\_load\_balancer\_no) | The ID of Load Balancer (It is the same result as id) |
| <a name="output_vpc_no"></a> [vpc\_no](#output\_vpc\_no) | The ID of the associated VPC |
<!-- END_TF_DOCS -->