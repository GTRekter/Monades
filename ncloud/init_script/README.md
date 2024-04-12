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
| [ncloud_init_script.init_script](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/init_script) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_content"></a> [content](#input\_content) | (Required) Initialization script content. Scripts such as Python, Perl, Shell are available for Linux environments. However, on the first line, you must specify the script path you want to run in the form of #!/usr/bin/env python, #!/bin/perl, #!/bin/bash, etc. Windows environments can only write Visual Basic scripts. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | (Optional) description to create. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name to create. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_os_type"></a> [os\_type](#input\_os\_type) | (Optional) Type of O/S to apply server instance. Default LNX. Accepted values: LNX (LINUX) \| WND (WINDOWS) | `string` | `"LNX"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Init script. |
| <a name="output_init_script_no"></a> [init\_script\_no](#output\_init\_script\_no) | The ID of the Init script. (It is the same result as id) |
<!-- END_TF_DOCS -->