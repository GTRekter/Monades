<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_synapse_integration_runtime_azure.integration_runtime_azure](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_integration_runtime_azure) | resource |
| [azurerm_synapse_linked_service.linked_service](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/synapse_linked_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the Synapse Linked Service. | `string` | `null` | no |
| <a name="input_integration_runtime_name"></a> [integration\_runtime\_name](#input\_integration\_runtime\_name) | The name of the Synapse Integration Runtime. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the Synapse Linked Service. | `string` | n/a | yes |
| <a name="input_synapse_workspace_id"></a> [synapse\_workspace\_id](#input\_synapse\_workspace\_id) | The ID of the Synapse Workspace. | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | The type of the Synapse Linked Service. | `string` | n/a | yes |
| <a name="input_type_properties_json"></a> [type\_properties\_json](#input\_type\_properties\_json) | The JSON representation of the Linked Service Type Properties. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Synapse Linked Service |
<!-- END_TF_DOCS -->