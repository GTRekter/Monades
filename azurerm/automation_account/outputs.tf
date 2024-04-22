output "automation_account_name" {
  description = "Name of the Automation Account"
  value       = azurerm_automation_account.automation_account.name
}

output "automation_account_principal_id" {
  description = "The principal ID of the system-assigned identity of the automation account, if available."
  value       = try(azurerm_automation_account.automation_account.identity[0].principal_id, null)
}