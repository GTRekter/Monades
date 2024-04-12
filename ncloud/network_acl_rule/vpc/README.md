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
| [ncloud_network_acl_rule.nacl_rule](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/network_acl_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_inbound"></a> [inbound](#input\_inbound) | Specifies an Inbound(ingress) rules. Parameters defined below. This argument is processed in attriutbe-as-blocks mode.<br>  - priority - (Required) Priority for rules, Used for ordering. Can be an integer from 1 to 199.<br>  - protocol - (Required) Select between TCP, UDP, and ICMP. Accepted values: TCP \| UDP \| ICMP<br>  - rule\_action - (Required) The action to take. Accepted values: ALLOW \| DROP<br>  - ip\_block - (Optional, Required if deny\_allow\_group\_no is not provided) The CIDR block to match. This must be a valid network mask.<br>  - deny\_allow\_group\_no - (Optional, Required if ip\_block is not provided) The access source Deny-Allow Group number of network ACL rules. You can specify a Deny-Allow Group instead of an IP address block as the access source. deny\_allow\_group\_no can be obtained through the Data source ncloud\_network\_acl\_deny\_allow\_group<br>  - port\_range - (Optional) Range of ports to apply. You can enter from 1 to 65535. e.g. set single port: 22 or set range port : 8000-9000<br>  NOTE: If the value of protocol is ICMP, the port\_range values will be ignored and the rule will apply to all ports.<br>  - description - (Optional) description to create. | <pre>list(object({<br>    priority          = number<br>    protocol          = string<br>    rule_action       = string<br>    ip_block          = optional(string)<br>    deny_allow_group_no = optional(string)<br>    port_range        = optional(string)<br>    description       = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_network_acl_no"></a> [network\_acl\_no](#input\_network\_acl\_no) | (Required) The ID of the Network ACL. | `string` | n/a | yes |
| <a name="input_outbound"></a> [outbound](#input\_outbound) | Specifies an Outbound(egress) rules. Parameters defined below. This argument is processed in attriutbe-as-blocks mode.<br>  - priority - (Required) Priority for rules, Used for ordering. Can be an integer from 1 to 199.<br>  - protocol - (Required) Select between TCP, UDP, and ICMP. Accepted values: TCP \| UDP \| ICMP<br>  - rule\_action - (Required) The action to take. Accepted values: ALLOW \| DROP<br>  - ip\_block - (Optional, Required if deny\_allow\_group\_no is not provided) The CIDR block to match. This must be a valid network mask.<br>  - deny\_allow\_group\_no - (Optional, Required if ip\_block is not provided) The access source Deny-Allow Group number of network ACL rules. You can specify a Deny-Allow Group instead of an IP address block as the access source. deny\_allow\_group\_no can be obtained through the Data source ncloud\_network\_acl\_deny\_allow\_group<br>  - port\_range - (Optional) Range of ports to apply. You can enter from 1 to 65535. e.g. set single port: 22 or set range port : 8000-9000<br>  NOTE: If the value of protocol is ICMP, the port\_range values will be ignored and the rule will apply to all ports.<br>  - description - (Optional) description to create. | <pre>list(object({<br>    priority          = number<br>    protocol          = string<br>    rule_action       = string<br>    ip_block          = optional(string)<br>    deny_allow_group_no = optional(string)<br>    port_range        = optional(string)<br>    description       = optional(string)<br>  }))</pre> | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->