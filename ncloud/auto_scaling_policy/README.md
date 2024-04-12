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
| [ncloud_auto_scaling_policy.auto_scaling_policy](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/auto_scaling_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_adjustment_type_code"></a> [adjustment\_type\_code](#input\_adjustment\_type\_code) | (Required) Determines how the number of servers is scaled when the scaling policy is performed. Valid values are CHANG, EXACT, and PRCNT. | `string` | n/a | yes |
| <a name="input_auto_scaling_group_no"></a> [auto\_scaling\_group\_no](#input\_auto\_scaling\_group\_no) | (Required) The number of the auto scaling group. | `number` | n/a | yes |
| <a name="input_cooldown"></a> [cooldown](#input\_cooldown) | (Optional) The cooldown time is the period set to ignore even if the monitoring event alarm occurs after the actual scaling is being performed or is completed. | `number` | `0` | no |
| <a name="input_min_adjustment_step"></a> [min\_adjustment\_step](#input\_min\_adjustment\_step) | (Optional) Change the number of server instances by the minimum adjustment width. | `number` | `1` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Auto Scaling Policy name to create. Only lowercase alphanumeric characters and non-consecutive hyphens (-) allowed. First character must be a letter, but the last character may be a letter or a number. | `string` | n/a | yes |
| <a name="input_scaling_adjustment"></a> [scaling\_adjustment](#input\_scaling\_adjustment) | (Required) Specify the adjustment value for the adjustment type. Enter a negative value to decrease when adjustTypeCode is CHANG or PRCNT. | `number` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->