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

module "automation_schedule_example" {
  source                  = "../"
  name                    = "example-schedule"
  resource_group_name     = azurerm_resource_group.example.name
  automation_account_name = azurerm_automation_account.example.name
  frequency               = "Day"
  interval                = 1
  start_time              = timeadd(timestamp(), "24h")
  description             = "This is an example schedule."
  timezone                = "Etc/UTC"
  week_days               = ["Monday", "Tuesday"]
  month_days              = [1, 15]
  monthly_occurrence = {
    day        = "Friday"
    occurrence = 1
  }
}