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

module "automation_runbook_example" {
  source                   = "../"
  name                     = "example-runbook"
  location                 = azurerm_resource_group.example.location
  resource_group_name      = azurerm_resource_group.example.name
  automation_account_name  = azurerm_automation_account.example.name
  log_verbose              = true
  log_progress             = true
  description              = "This is an example automation runbook."
  runbook_type             = "PowerShell"
  publish_content_link_uri = "https://example.com/runbook.ps1"
  content                  = <<-EOF
  Write-Output "This is an example"
  EOF
  draft = {
    edit_mode_enabled = true
    output_types      = ["String"]
    content_link = {
      uri     = "https://example.com/draft_runbook.ps1"
      version = "1.0"
      hash = {
        algorithm = "SHA256"
        value     = "abc123"
      }
    }
    parameters = [
      {
        key           = "Param1"
        type          = "string"
        mandatory     = true
        position      = 0
        default_value = "DefaultValue1"
      },
      {
        key           = "Param2"
        type          = "int"
        mandatory     = false
        position      = 1
        default_value = "2"
      }
    ]
  }
}