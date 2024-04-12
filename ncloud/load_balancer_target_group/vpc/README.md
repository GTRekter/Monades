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
| [ncloud_lb_target_group.target_group](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/lb_target_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_algorithm_type"></a> [algorithm\_type](#input\_algorithm\_type) | (Optional) The type of algorithm to use for load balancing. Accepted values: RR(Round Robin) \| SIPHS(Source IP Hash) \| LC(Least Connection) \| MH(Maglev Hash). RR \| SIPHS \| LC are valid only if the target group type is PROXY\_TCP, HTTP or HTTPS. MH \| RR are valid only if the target group type is TCP. | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) The description of the target group. | `string` | `null` | no |
| <a name="input_health_check"></a> [health\_check](#input\_health\_check) | (Optional) The health check to check the health of the target.<br>  - cycle - (Optional) The number of health check cycle. Default: 30. Valid from 5 to 300.<br>  - down\_threshold - (Optional) The number of health check failure threshold. You can determine the number of consecutive health check failures that are required before a health check is considered a failed state. Default: 2. Valid from 2 to 10.<br>  - up\_threshold - (Optional) The number of health check normal threshold. You can determine the number of consecutive health checks that are required before health checks are considered success state. Default: 2. Valid from 2 to 10.<br>  - http\_method - (Optional) The HTTP method for the health check. You can determine which HTTP method to use for health checks. If the health check protocol type is HTTP or HTTPS, be sure to enter it. Accepted values: HEAD \| GET.<br>  - port - (Optional) The port to use for health checks. Default: 80. Valid from 1 to 65534.<br>  - protocol - (Required) The type of protocol to use for health checks. If the target group protocol type is TCP or PROXY\_TCP, Heal Check Protocol is only valid for TCP. If the target group protocol type is HTTP or HTTPS, Heal Check Protocol is valid only for HTTP and HTTPS.<br>  - url\_path - (Optional) The URL path of the health check. Valid only if Health Check protocol type is HTTP or HTTPS. URL path must begin with /. | <pre>object({<br>    cycle          = optional(number)<br>    down_threshold = optional(number)<br>    up_threshold   = optional(number)<br>    http_method    = optional(string)<br>    port           = optional(number)<br>    protocol       = string<br>    url_path       = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the target group. | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | (Optional) The port on which targets receive traffic. Default: 80. Valid from 1 to 65534. | `number` | `80` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | (Required) The protocol to use for routing traffic to the targets. Accepted values: TCP \| PROXY\_TCP \| HTTP \| HTTPS. The protocol you use determines which type of load balancer is applicable. APPLICATION Load Balancer Accepted values: HTTP \| HTTPS, NETWORK Load Balancer Accepted values : TCP, NETWORK\_PROXY Load Balancer Accepted values : PROXY\_TCP. | `string` | n/a | yes |
| <a name="input_target_type"></a> [target\_type](#input\_target\_type) | (Optional) The type of target to be added to the target group. | `string` | `null` | no |
| <a name="input_use_proxy_protocol"></a> [use\_proxy\_protocol](#input\_use\_proxy\_protocol) | (Optional) Whether to use a proxy protocol. Valid only available if the target group type selected is TCP \| HTTP \| HTTPS. | `bool` | `false` | no |
| <a name="input_use_sticky_session"></a> [use\_sticky\_session](#input\_use\_sticky\_session) | (Optional) Whether to use session specific access. | `bool` | `false` | no |
| <a name="input_vpc_no"></a> [vpc\_no](#input\_vpc\_no) | (Required) The ID of the VPC in to create the target group. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of target group. |
| <a name="output_load_balancer_instance_no"></a> [load\_balancer\_instance\_no](#output\_load\_balancer\_instance\_no) | The ID of the Load Balancer associated with the Target Group. |
| <a name="output_target_group_no"></a> [target\_group\_no](#output\_target\_group\_no) | The ID of target group (It is the same result as id) |
| <a name="output_target_no_list"></a> [target\_no\_list](#output\_target\_no\_list) | The list of target number to bind to the target group. |
<!-- END_TF_DOCS -->