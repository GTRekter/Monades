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
| [ncloud_load_balancer.load_balancer](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/load_balancer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_algorithm_type"></a> [algorithm\_type](#input\_algorithm\_type) | (Optional) Load balancer algorithm type code. The available algorithms are as follows: [ROUND ROBIN (RR) \| LEAST\_CONNECTION (LC)]. Default: ROUND ROBIN (RR) | `string` | `"ROUND ROBIN (RR)"` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) Description of a load balancer instance. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) Name of a load balancer instance. Default: Automatically specified by Ncloud. | `string` | `null` | no |
| <a name="input_network_usage_type"></a> [network\_usage\_type](#input\_network\_usage\_type) | (Optional) Network usage identification code. PBLIP(PublicIP), PRVT(PrivateIP). default : PBLIP(PublicIP) | `string` | `"PBLIP"` | no |
| <a name="input_region"></a> [region](#input\_region) | (Optional) Region code. Get available values using the data source ncloud\_regions. Default: KR region. | `string` | `"KR"` | no |
| <a name="input_rule_list"></a> [rule\_list](#input\_rule\_list) | (Optional) Load balancer rules.<br>  - protocol\_type - (Required) Protocol type code of load balancer rules. The following codes are available. [HTTP \| HTTPS \| TCP \| SSL]<br>  - load\_balancer\_port - (Required) Load balancer port of load balancer rules<br>  - server\_port - (Required) Server port of load balancer rules<br>  - l7\_health\_check\_path - (optional) Health check path of load balancer rules. Required when the protocol\_type is HTTP/HTTPS.<br>  - certificate\_name - (optional) Load balancer SSL certificate name. Required when the protocol\_type value is SSL/HTTPS.<br>  - proxy\_protocol\_use\_yn - (Optional) Use 'Y' if you want to check client IP addresses by enabling the proxy protocol while you select TCP or SSL. | <pre>list(object({<br>    protocol_type         = string<br>    load_balancer_port    = number<br>    server_port           = number<br>    l7_health_check_path  = optional(string)<br>    certificate_name      = optional(string)<br>    proxy_protocol_use_yn = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_server_instance_no_list"></a> [server\_instance\_no\_list](#input\_server\_instance\_no\_list) | (Optional) List of server instance numbers to be bound to the load balancer | `list(string)` | `[]` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | (Optional) Zone code. Zone in which you want to create a NAS volume. Default: The first zone of the region. Get available values using the data source ncloud\_zones. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_connection_timeout"></a> [connection\_timeout](#output\_connection\_timeout) | Connection timeout |
| <a name="output_create_date"></a> [create\_date](#output\_create\_date) | Creation date of the Load Balancer instance |
| <a name="output_domain_name"></a> [domain\_name](#output\_domain\_name) | Domain name |
| <a name="output_id"></a> [id](#output\_id) | The ID of Load Balancer. |
| <a name="output_instance_no"></a> [instance\_no](#output\_instance\_no) | Load Balancer instance No |
| <a name="output_instance_operation"></a> [instance\_operation](#output\_instance\_operation) | Load Balancer instance operation code |
| <a name="output_instance_status"></a> [instance\_status](#output\_instance\_status) | Load Balancer instance status code |
| <a name="output_instance_status_name"></a> [instance\_status\_name](#output\_instance\_status\_name) | Load Balancer instance status name |
| <a name="output_is_http_keep_alive"></a> [is\_http\_keep\_alive](#output\_is\_http\_keep\_alive) | Http keep alive value [true \| false] |
| <a name="output_load_balanced_server_instance_list"></a> [load\_balanced\_server\_instance\_list](#output\_load\_balanced\_server\_instance\_list) | Load balanced server instance list |
| <a name="output_virtual_ip"></a> [virtual\_ip](#output\_virtual\_ip) | Virtual IP address |
<!-- END_TF_DOCS -->