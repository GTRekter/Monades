resource "azurerm_automation_job_schedule" "automation_job_schedule" {
  resource_group_name     = var.resource_group_name
  automation_account_name = var.automation_account_name
  runbook_name            = var.runbook_name
  schedule_name           = var.schedule_name
  parameters              = var.parameters
  run_on                  = var.run_on
}