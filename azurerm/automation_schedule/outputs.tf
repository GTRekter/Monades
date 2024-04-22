output "automation_schedule_name" {
  description = "The name of the Automation Schedule"
  value       = azurerm_automation_schedule.automation_schedule.name
}

output "automation_schedule_id" {
  description = "The ID of the Automation Schedule created."
  value       = azurerm_automation_schedule.automation_schedule.id
}