output "automation_job_schedule_id" {
  description = "The ID of the Automation Job Schedule."
  value       = azurerm_automation_job_schedule.automation_job_schedule.id
}

output "job_schedule_id" {
  description = "The UUID identifying the Automation Job Schedule. This is only available if the schedule is not linked to a schedule."
  value       = azurerm_automation_job_schedule.automation_job_schedule.job_schedule_id
}