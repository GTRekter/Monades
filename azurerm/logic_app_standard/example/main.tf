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

resource "azurerm_resource_group" "resource_group" {
  name     = "example-resource-group"
  location = "eastus"
}

resource "azurerm_virtual_network" "virtual_network" {
  name                = "example-virtual-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.resource_group.name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "saexample198462"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

module "logic_app" {
  source = "../"

  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location

  app_service_plan = {
    name                         = "my-app-service-plan"
    sku_name                     = "WS1"
    maximum_elastic_worker_count = 4
    os_type                      = "Windows"
  }

  name                = "my-logic-app"
  app_service_plan_id = null
  environment         = "production"
  service_name        = "my-service"

  custom_app_settings = {
    "CUSTOM_SETTING_1" = "value1"
    "CUSTOM_SETTING_2" = "value2"
  }

  connection_string       = null
  client_affinity_enabled = true
  client_certificate_mode = "Required"
  enabled                 = true
  https_only              = true

  site_config = {
    always_on                        = true
    app_scale_limit                  = 5
    dotnet_framework_version         = "v4.0"
    elastic_instance_minimum         = 2
    ftps_state                       = "FtpsOnly"
    health_check_path                = "/"
    http2_enabled                    = true
    linux_fx_version                 = "node|14"
    min_tls_version                  = "1.2"
    pre_warmed_instance_count        = 3
    public_network_access_enabled    = true
    runtime_scale_monitoring_enabled = true
    use_32_bit_worker_process        = false
    vnet_route_all_enabled           = false
    websockets_enabled               = true
  }

  storage_account_name       = azurerm_storage_account.storage_account.name
  storage_account_access_key = azurerm_storage_account.storage_account.primary_access_key
  storage_account_share_name = null

  virtual_network_subnet_id = azurerm_virtual_network.virtual_network.id
}

