output "runtime_id" {
  value       = azurerm_synapse_integration_runtime_azure.integration_runtime_azure.id
  description = "The ID of the Synapse Azure Integration Runtime."
}
output "id" {
  value       = azurerm_synapse_linked_service.linked_service.id
  description = "The ID of the Synapse Linked Service"
}