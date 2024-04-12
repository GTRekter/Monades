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
| [ncloud_lb_listener.listener_vpc](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/lb_listener) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_load_balancer_no"></a> [load\_balancer\_no](#input\_load\_balancer\_no) | (Required) The ID of the load balancer. | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | (Required) The port on which the load balancer is listening. Valid from 1 to 65534. | `number` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | (Required) The protocol type for the listener. The types of protocols available are limited by the type of load balancer. APPLICATION Load Balancer Accepted values: HTTP \| HTTPS, NETWORK Load Balancer Accepted values : TCP, NETWORK\_PROXY Load Balancer Accepted values : TCP \| TLS. | `string` | n/a | yes |
| <a name="input_ssl_certificate_no"></a> [ssl\_certificate\_no](#input\_ssl\_certificate\_no) | (Optional) The ID of the SSL certificate. If the listener protocol type is HTTPS or TLS, an SSL certificate must be set. | `string` | `null` | no |
| <a name="input_target_group_no"></a> [target\_group\_no](#input\_target\_group\_no) | (Required) The ID of the target group. | `string` | n/a | yes |
| <a name="input_tls_min_version_type"></a> [tls\_min\_version\_type](#input\_tls\_min\_version\_type) | (Optional) The TLS minimum supported version type code. Valid only if the listener protocol type is HTTPS or TLS. Accepted values : TLSV10(TLSv1.0) \| TLSV11(TLSv1.1) \| TLSV12(TLSv1.2). Default: TLSV10. | `string` | `"TLSV10"` | no |
| <a name="input_use_http2"></a> [use\_http2](#input\_use\_http2) | (Optional) Whether to use HTTP/2 protocol. Valid only if the listener protocol type is HTTPS. Accepted values : true, false. Default: false. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of listener. |
| <a name="output_listener_no"></a> [listener\_no](#output\_listener\_no) | The ID of listener (It is the same result as id) |
| <a name="output_rule_no_list"></a> [rule\_no\_list](#output\_rule\_no\_list) | The list of listener rule number. |
<!-- END_TF_DOCS -->