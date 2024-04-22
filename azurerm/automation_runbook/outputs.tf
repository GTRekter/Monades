output "automation_runbook_name" {
  description = "The name of the Automation Runbook"
  value       = azurerm_automation_runbook.automation_runbook.name
}

output "automation_runbook_id" {
  description = "The ID of the Automation Runbook created."
  value       = azurerm_automation_runbook.automation_runbook.id
}