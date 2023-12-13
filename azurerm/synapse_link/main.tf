resource "azurerm_synapse_integration_runtime_azure" "integration_runtime_azure" {
  name                 = var.integration_runtime_name
  synapse_workspace_id = var.synapse_workspace_id
  location             = var.location
}
resource "azurerm_synapse_linked_service" "linked_service" {
  name                 = var.name
  description          = var.description
  synapse_workspace_id = var.synapse_workspace_id
  type                 = var.type
  type_properties_json = var.type_properties_json
  integration_runtime {
    name = azurerm_synapse_integration_runtime_azure.integration_runtime_azure.name
  }
}