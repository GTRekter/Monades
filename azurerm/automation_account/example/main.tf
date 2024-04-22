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

module "automation_account_example" {
  source                        = "../"
  name                          = "example-automation-account"
  location                      = azurerm_resource_group.example.location
  resource_group_name           = azurerm_resource_group.example.name
  sku_name                      = "Basic"
  local_authentication_enabled  = false
  public_network_access_enabled = true
  tags = {
    environment = "dev"
  }
}