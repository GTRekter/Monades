provider "azurerm" {
  features {}
}
// =========================
// General
// =========================
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
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
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
  name                  = "cont${random_string.name.result}"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "container"
}
resource "azurerm_storage_data_lake_gen2_filesystem" "data_lake_gen2_filesystem" {
  name               = "dlfs${random_string.name.result}"
  storage_account_id = azurerm_storage_account.storage_account.id
}
resource "azurerm_synapse_workspace" "synapse_workspace" {
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
  sql_identity_control_enabled         = true
  identity {
    type = "SystemAssigned"
  }
}
resource "azurerm_synapse_firewall_rule" "synapse_firewall_rule" {
  name                 = "allowAll"
  synapse_workspace_id = azurerm_synapse_workspace.synapse_workspace.id
  start_ip_address     = "0.0.0.0"
  end_ip_address       = "255.255.255.255"
}
// =========================
// Synapse SQL Pool
// =========================
module "synapse_sql_pool" {
  source = "../"
  // Synapse SQL Pool Variables
  name                      = "synapse_sql_pool_${random_string.name.result}"
  synapse_workspace_id      = azurerm_synapse_workspace.synapse_workspace.id
  sku_name                  = "DW100c"
  create_mode               = "Default"
  storage_account_type      = "GRS"
  collation                 = "SQL_Latin1_General_CP1_CI_AS"
  data_encrypted            = true
  geo_backup_policy_enabled = false
  tags                      = local.tags
  // Extended Auditing Policy Variables
  audit_logs_enabled                                 = true
  audit_logs_primary_blob_endpoint                   = azurerm_storage_account.storage_account.primary_blob_endpoint
  audit_logs_storage_account_access_key              = azurerm_storage_account.storage_account.primary_access_key
  audit_logs_storage_account_access_key_is_secondary = false
  audit_logs_log_monitoring_enabled                  = true
  audit_logs_retention_in_days                       = 2
  // Security Alert Policy Variables
  security_alert_policy_enabled                      = true
  security_alert_policy_state                        = "New"
  security_alert_policy_disabled_alerts              = ["Sql_Injection", "Sql_Injection_Vulnerability"]
  security_alert_policy_storage_endpoint             = azurerm_storage_account.storage_account.primary_blob_endpoint
  security_alert_policy_storage_account_access_key   = azurerm_storage_account.storage_account.primary_access_key
  security_alert_policy_email_account_admins_enabled = true
  security_alert_policy_email_addresses              = ["sample@sample.com"]
  security_alert_policy_retention_days               = 2
  // Vulnerability Assessment Variables
  vulnerability_assessment_enabled                    = true
  vulnerability_assessment_storage_container_path     = azurerm_storage_container.azurerm_storage_container.name
  vulnerability_assessment_storage_account_access_key = azurerm_storage_account.storage_account.primary_access_key
  vulnerability_assessment_recurring_scans = {
    enabled                           = true
    email_subscription_admins_enabled = true
    emails                            = ["sample@sample.com"]
  }
}