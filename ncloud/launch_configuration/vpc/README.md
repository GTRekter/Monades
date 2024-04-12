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
| [ncloud_launch_configuration.launch_configuration](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/launch_configuration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_init_script_no"></a> [init\_script\_no](#input\_init\_script\_no) | (Optional) Set init script ID, The server can run a user-set initialization script at first boot. | `number` | `null` | no |
| <a name="input_is_encrypted_volume"></a> [is\_encrypted\_volume](#input\_is\_encrypted\_volume) | (Optional) you can set whether to encrypt basic block storage if server image is RHV. Default false. | `bool` | `false` | no |
| <a name="input_login_key_name"></a> [login\_key\_name](#input\_login\_key\_name) | (Optional) The login key name to encrypt with the public key. Default : Uses the login key name most recently created. | `string` | `null` | no |
| <a name="input_member_server_image_no"></a> [member\_server\_image\_no](#input\_member\_server\_image\_no) | (Optional) Required value when creating a server from a manually created server image. It can be obtained through the getMemberServerImageList action. | `number` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) Launch Configuration name to create. default : Ncloud assigns default values. | `string` | `null` | no |
| <a name="input_server_image_product_code"></a> [server\_image\_product\_code](#input\_server\_image\_product\_code) | (Optional) Server image product code to determine which server image to create. It can be obtained through data ncloud\_server\_images. You are required to select one between two parameters: server image product code (server\_image\_product\_code) and member server image number member\_server\_image\_no) | `string` | `null` | no |
| <a name="input_server_product_code"></a> [server\_product\_code](#input\_server\_product\_code) | (Optional) Server product code to determine the server specification to create. It can be obtained through the getServerProductList action. Default : Selected as minimum specification. The minimum standards are 1. memory 2. CPU 3. basic block storage size 4. disk type (NET,LOCAL) | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of Launch Configuration. |
| <a name="output_launch_configuration_no"></a> [launch\_configuration\_no](#output\_launch\_configuration\_no) | The ID of Launch Configuration (It is the same result as id) |
<!-- END_TF_DOCS -->