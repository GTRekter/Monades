resource "azurerm_automation_schedule" "automation_schedule" {
  name                    = var.name
  resource_group_name     = var.resource_group_name
  automation_account_name = var.automation_account_name
  frequency               = var.frequency
  interval                = var.interval
  start_time              = var.start_time != "" ? var.start_time : null
  expiry_time             = var.expiry_time != "" ? var.expiry_time : null
  timezone                = var.timezone
  description             = var.description
  week_days               = var.frequency == "Week" ? var.week_days : null
  month_days              = var.frequency == "Month" ? var.month_days : null
  dynamic "monthly_occurrence" {
    for_each = var.monthly_occurrence != null && var.frequency == "Month" ? [var.monthly_occurrence] : []
    content {
      day        = monthly_occurrence.value.day
      occurrence = monthly_occurrence.value.occurrence
    }
  }
}