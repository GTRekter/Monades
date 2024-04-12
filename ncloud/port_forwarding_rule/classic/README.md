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
| [ncloud_port_forwarding_rule.port_forwarding_rule](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/port_forwarding_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_port_forwarding_configuration_no"></a> [port\_forwarding\_configuration\_no](#input\_port\_forwarding\_configuration\_no) | (Optional) Port forwarding configuration number. You can get by calling data ncloud\_port\_forwarding\_rules | `string` | `null` | no |
| <a name="input_port_forwarding_external_port"></a> [port\_forwarding\_external\_port](#input\_port\_forwarding\_external\_port) | (Required) External port for port forwarding | `string` | n/a | yes |
| <a name="input_port_forwarding_internal_port"></a> [port\_forwarding\_internal\_port](#input\_port\_forwarding\_internal\_port) | (Required) Internal port for port forwarding. Only the following ports are available. [Linux: 22 \| Windows: 3389] | `number` | n/a | yes |
| <a name="input_server_instance_no"></a> [server\_instance\_no](#input\_server\_instance\_no) | (Required) Server instance number for which port forwarding is set | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of Port forwarding rule.port\_forwarding\_configuration\_no:zone\_no:port\_forwarding\_external\_port |
| <a name="output_port_forwarding_public_ip"></a> [port\_forwarding\_public\_ip](#output\_port\_forwarding\_public\_ip) | Port forwarding Public IP |
| <a name="output_zone"></a> [zone](#output\_zone) | Zone code |
<!-- END_TF_DOCS -->