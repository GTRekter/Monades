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
| [ncloud_access_control_group_rule.access_control_group_rule](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/access_control_group_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_control_group_no"></a> [access\_control\_group\_no](#input\_access\_control\_group\_no) | (Required) The ID of the ACG. | `string` | n/a | yes |
| <a name="input_inbound"></a> [inbound](#input\_inbound) | (Optional) Specifies an Inbound(ingress) rules. Parameters defined below.<br>  - protocol - (Required) Select between TCP, UDP, and ICMP. Accepted values: TCP \| UDP \| ICMP<br>  - ip\_block - (Optional) The CIDR block to match. This must be a valid network mask. Cannot be specified with source\_access\_control\_group\_no.<br>  - source\_access\_control\_group\_no - (Optional) The ID of specific ACG to apply this rule to. Cannot be specified with ip\_block.<br>  - port\_range - (Optional) Range of ports to apply. You can enter from 1 to 65535. e.g. set single port: 22 or set range port : 8000-9000<br>  - description - (Optional) description to create. | <pre>list(object({<br>    protocol = string<br>    ip_block = optional(string)<br>    source_access_control_group_no = optional(string)<br>    port_range = string<br>    description = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_outbound"></a> [outbound](#input\_outbound) | (Optional) Specifies an Outboud(egrress) rules. Parameters defined below.<br>  - protocol - (Required) Select between TCP, UDP, and ICMP. Accepted values: TCP \| UDP \| ICMP<br>  - ip\_block - (Optional) The CIDR block to match. This must be a valid network mask. Cannot be specified with source\_access\_control\_group\_no.<br>  - source\_access\_control\_group\_no - (Optional) The ID of specific ACG to apply this rule to. Cannot be specified with ip\_block.<br>  - port\_range - (Optional) Range of ports to apply. You can enter from 1 to 65535. e.g. set single port: 22 or set range port : 8000-9000<br>  - description - (Optional) description to create. | <pre>list(object({<br>    protocol = string<br>    ip_block = optional(string)<br>    source_access_control_group_no = optional(string)<br>    port_range = string<br>    description = optional(string)<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of ACG(Access Control Group) rule |
<!-- END_TF_DOCS -->