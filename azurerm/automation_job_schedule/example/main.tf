terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_automation_account" "example" {
  name                = "example-automation-account"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku_name            = "Basic"
}

resource "azurerm_automation_runbook" "example" {
  name                    = "example-runbook"
  location                = azurerm_resource_group.example.location
  resource_group_name     = azurerm_resource_group.example.name
  automation_account_name = azurerm_automation_account.example.name
  log_verbose             = true
  log_progress            = true
  runbook_type            = "PowerShell"
  publish_content_link {
    uri = "http://example.com/runbook.ps1"
  }
}

resource "azurerm_automation_schedule" "example" {
  name                    = "example-schedule"
  resource_group_name     = azurerm_resource_group.example.name
  automation_account_name = azurerm_automation_account.example.name
  frequency               = "OneTime"
  timezone                = "UTC"
  start_time              = "2024-01-01T01:00:00Z"
}

module "automation_job_schedule_example" {
  source                  = "../"
  resource_group_name     = azurerm_resource_group.example.name
  automation_account_name = azurerm_automation_account.example.name
  runbook_name            = azurerm_automation_runbook.example.name
  schedule_name           = azurerm_automation_schedule.example.name
  parameters = {
    "param1" = "value1"
    "param2" = "value2"
  }
}
