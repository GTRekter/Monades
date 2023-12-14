provider "azurerm" {
  features {}
}

resource "random_string" "name" {
  length  = 10
  lower   = true
  upper   = false
  special = false
}

resource "azurerm_resource_group" "resource_group" {
  name     = "rg-${random_string.name.result}"
  location = "West Europe"
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "st${random_string.name.result}"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_role_assignment" "storage_account_contributor" {
  scope                = azurerm_storage_account.storage_account.id
  role_definition_name = "Storage Account Contributor"
  principal_id         = data.azurerm_client_config.example.object_id
}

resource "azurerm_role_assignment" "storage_account_blob_contributor" {
  scope                = azurerm_storage_account.storage_account.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = data.azurerm_client_config.example.object_id
}

resource "azurerm_storage_container" "azurerm_storage_container" {
  name                  = "container"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "container"
}

resource "azurerm_storage_data_lake_gen2_filesystem" "data_lake_gen2_filesystem" {
  name               = "datalakefs"
  storage_account_id = azurerm_storage_account.storage_account.id
}

module "synapse" {
  source                               = "../synapse_workspace"
  name                                 = "synapse-${random_string.name.result}"
  resource_group_name                  = azurerm_resource_group.resource_group.name
  location                             = azurerm_resource_group.resource_group.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.data_lake_gen2_filesystem.id
  sql_administrator_login              = "sqladmin"
  sql_administrator_login_password     = "Password1234!"
  azuread_authentication_only          = false
  data_exfiltration_protection_enabled = true
  public_network_access_enabled        = true
  managed_virtual_network_enabled      = true
  firewall_rules = [
    {
      name             = "AllowAll"
      start_ip_address = "0.0.0.0"
      end_ip_address   = "255.255.255.255"
    }
  ]
  sql_identity_control_enabled                        = true
  security_alert_policy_enabled                       = true
  security_alert_policy_retention_days                = 10
  security_alert_policy_state                         = "Enabled"
  security_alert_policy_email_account_admins_enabled  = true
  security_alert_policy_email_addresses               = ["demo@demo.com"]
  security_alert_policy_disabled_alerts               = ["Sql_Injection"]
  vulnerability_assessment_enabled                    = true
  vulnerability_assessment_storage_account_access_key = azurerm_storage_account.storage_account.primary_access_key
  vulnerability_assessment_storage_container_path     = "https://${azurerm_storage_account.storage_account.name}.blob.core.windows.net/${azurerm_storage_container.azurerm_storage_container.name}"
  vulnerability_assessment_recurring_scans = {
    enabled                           = true
    email_subscription_admins_enabled = true
    emails                            = ["demo@demo.com"]
  }
  tags = {
    environment = "dev"
  }
}

module "synapse_sql_pool" {
  source               = "../synapse_sql_pool"
  name                 = "synapse_sql_pool_${random_string.name.result}"
  synapse_workspace_id = module.synapse.workspace_id
  sku_name             = "DW100c"
  create_mode          = "Default"
  storage_account_type = "GRS"
}