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
| [ncloud_auto_scaling_group.auto_scaling_group](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/auto_scaling_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_control_group_no_list"></a> [access\_control\_group\_no\_list](#input\_access\_control\_group\_no\_list) | (Required) The ID of the ACG. | `list(number)` | n/a | yes |
| <a name="input_default_cooldown"></a> [default\_cooldown](#input\_default\_cooldown) | (Optional) The cooldown time is the period set to ignore even if the monitoring event alarm occurs after the actual scaling is being performed or is completed. | `number` | `null` | no |
| <a name="input_desired_capacity"></a> [desired\_capacity](#input\_desired\_capacity) | (Optional) The number of servers is adjusted according to the desired capacity value. This value must be more than the minimum capacity and less than the maximum capacity. If this value is not specified, initially create a server with a minimum capacity. valid from 0 to 30. | `number` | `0` | no |
| <a name="input_health_check_grace_period"></a> [health\_check\_grace\_period](#input\_health\_check\_grace\_period) | (Optional) Set the time to hold health check after the server instance is put into the service with the health check hold period. If the health\_check\_type\_code is LOADB, health\_check\_grace\_period is required. | `number` | `null` | no |
| <a name="input_health_check_type_code"></a> [health\_check\_type\_code](#input\_health\_check\_type\_code) | (Optional) SVR or LOADB. Controls how health checking is done. | `string` | `null` | no |
| <a name="input_ignore_capacity_changes"></a> [ignore\_capacity\_changes](#input\_ignore\_capacity\_changes) | (Optional) If set this true, any changes of desired\_capacity, min\_size and max\_size will be ignored and not rolled back. | `bool` | `false` | no |
| <a name="input_launch_configuration_no"></a> [launch\_configuration\_no](#input\_launch\_configuration\_no) | (Required) Launch Configuration Number for creating Auto Scaling Group. | `number` | n/a | yes |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | (Required) The maximum size of the Auto Scaling Group. valid from 0 to 30. | `number` | n/a | yes |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | (Required) The minimum size of the Auto Scaling Group. valid from 0 to 30. | `number` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Optional) Auto Scaling Group name to create. default : Ncloud assigns default values. | `string` | `""` | no |
| <a name="input_server_name_prefix"></a> [server\_name\_prefix](#input\_server\_name\_prefix) | (Optional) Create name beginning with the specified prefix. | `string` | n/a | yes |
| <a name="input_subnet_no"></a> [subnet\_no](#input\_subnet\_no) | (Required) The ID of the associated Subnet. | `number` | n/a | yes |
| <a name="input_wait_for_capacity_timeout"></a> [wait\_for\_capacity\_timeout](#input\_wait\_for\_capacity\_timeout) | (Optional) The maximum amount of time Terraform should wait for an ASG instance to become healthy. Setting this to '0' causes Terraform to skip all Capacity Waiting behavior. | `number` | `null` | no |
| <a name="input_zone_no_list"></a> [zone\_no\_list](#input\_zone\_no\_list) | (Optional) The list of zone numbers where server instances belonging to this group will exist. Valid only if the health\_check\_type\_code is LOADB. | `list(number)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_auto_scaling_group_no"></a> [auto\_scaling\_group\_no](#output\_auto\_scaling\_group\_no) | The ID of Auto Scaling Group (It is the same result as id) |
| <a name="output_id"></a> [id](#output\_id) | The ID of Auto Scaling Group. |
| <a name="output_server_instance_no_list"></a> [server\_instance\_no\_list](#output\_server\_instance\_no\_list) | List of server instances belonging to Auto Scaling Group. |
| <a name="output_vpc_no"></a> [vpc\_no](#output\_vpc\_no) | The ID of the associated VPC. |
<!-- END_TF_DOCS -->