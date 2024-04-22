terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "environment" {
  type    = string
  default = "tftest"
}

locals {
  tags = {
    CostCenter  = "2080-90120999"
    environment = var.environment
  }
}

module "naming" {
  source  = "Azure/naming/azurerm"
  version = "0.2.0"
  prefix  = ["tftest-euw"]
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "example" {
  name     = module.naming.resource_group.name
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = module.naming.virtual_network.name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = module.naming.subnet.name
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_key_vault" "example" {
  name                        = module.naming.key_vault.name
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name                    = "standard"
}

resource "azurerm_cosmosdb_account" "example" {
  name                = "example-cosmosdb-account"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  offer_type          = "Standard"
  kind                = "MongoDB"
  capabilities {
    name = "EnableMongo"
  }
  consistency_policy {
    consistency_level       = "Session"
    max_interval_in_seconds = 5
    max_staleness_prefix    = 100
  }
  geo_location {
    location          = azurerm_resource_group.example.location
    failover_priority = 0
  }
  tags = local.tags
}

module "cosmosdb_mongo_db" {
  source              = "../"
  name                = "example-mongodb"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_cosmosdb_account.example.name
  throughput          = 400
}

module "cosmosdb_mongo_db_max_throughput" {
  source              = "../"
  name                = "example-mongodb-2"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_cosmosdb_account.example.name
  autoscale_settings = {
    max_throughput = 1000
  }
}