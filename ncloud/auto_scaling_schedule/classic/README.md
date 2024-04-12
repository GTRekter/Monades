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
| [ncloud_auto_scaling_schedule.auto_scaling_schedule](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/auto_scaling_schedule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_scaling_group_no"></a> [auto\_scaling\_group\_no](#input\_auto\_scaling\_group\_no) | (Required) The number of the auto scaling group. | `number` | n/a | yes |
| <a name="input_desired_capacity"></a> [desired\_capacity](#input\_desired\_capacity) | (Required) The number of servers is adjusted according to the desired capacity value. Valid from 0 to 30. | `number` | n/a | yes |
| <a name="input_end_time"></a> [end\_time](#input\_end\_time) | (Optional) You can determine the date and time when the schedule end. If you don't enter recurrence, be sure to enter startTime. It must be a time later than the current time and a time later than the startTime. Format : yyyy-MM-ddTHH:mm:ssZ format in UTC/KST only (for example, 2021-02-02T18:00:00+0900). | `string` | `null` | no |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | (Required) The maximum size of the Auto Scaling Group. Valid from 0 to 30. | `number` | n/a | yes |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | (Required) The minimum size of the Auto Scaling Group. Valid from 0 to 30. | `number` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) Auto Scaling Schedule name to create. | `string` | n/a | yes |
| <a name="input_recurrence"></a> [recurrence](#input\_recurrence) | (Optional) Repeat Settings. You can specify a recurring schedule in crontab format. | `string` | `null` | no |
| <a name="input_start_time"></a> [start\_time](#input\_start\_time) | (Optional) You can determine the date and time when the schedule first starts. If you don't enter recurrence, be sure to enter startTime. It cannot be duplicated with the startTime of another schedule and must be later than the current time, before endTime. Format : yyyy-MM-ddTHH:mm:ssZ format in UTC/KST only (for example, 2021-02-02T15:00:00+0900). | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of Auto Scaling Schedule. |
| <a name="output_name"></a> [name](#output\_name) | The ID of Auto Scaling Schedule (It is the same result as id). |
<!-- END_TF_DOCS -->