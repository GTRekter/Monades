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

resource "azurerm_cosmosdb_account" "cosmosdb_account" {
  name                = "cosmos-${random_string.name.result}"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"
  consistency_policy {
    consistency_level = "Session"
  }
  geo_location {
    location          = azurerm_resource_group.resource_group.location
    failover_priority = 0
  }
  analytical_storage_enabled = true
  analytical_storage {
    schema_type = "FullFidelity"
  }
}

resource "azurerm_cosmosdb_sql_database" "cosmosdb_sql_database" {
  name                = "sql-${random_string.name.result}"
  resource_group_name = azurerm_cosmosdb_account.cosmosdb_account.resource_group_name
  account_name        = azurerm_cosmosdb_account.cosmosdb_account.name
}

resource "azurerm_cosmosdb_sql_container" "cosmosdb_sql_container" {
  name                  = "sqlcont-${random_string.name.result}"
  resource_group_name   = azurerm_cosmosdb_account.cosmosdb_account.resource_group_name
  account_name          = azurerm_cosmosdb_account.cosmosdb_account.name
  database_name         = azurerm_cosmosdb_sql_database.cosmosdb_sql_database.name
  partition_key_path    = "/definition/id"
  partition_key_version = 1
  throughput            = 400
  indexing_policy {
    indexing_mode = "consistent"
    included_path {
      path = "/*"
    }
    included_path {
      path = "/included/?"
    }
    excluded_path {
      path = "/excluded/?"
    }
  }
  unique_key {
    paths = ["/definition/idlong", "/definition/idshort"]
  }
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

## StatusCode=403 -- Original Error: autorest/azure: Service returned an error. Status=403 Code="ClientIpAddressNotAuthorized" Message="Client Ip address : 172.190.182.148"
resource "azurerm_synapse_firewall_rule" "synapse_firewall_rule" {
  name                 = "allowAll"
  synapse_workspace_id = azurerm_synapse_workspace.synapse_workspace.id
  start_ip_address     = "0.0.0.0"
  end_ip_address       = "255.255.255.255"
}

# to be deleted: Future#WaitForCompletion: the number of retries has been exceeded: StatusCode=403 -- Original Error: Code="ClientIpAddressNotAuthorized" Message="Client Ip address : 172.190.182.148"
module "synapse_linked_service" {
  source                   = "../"
  name                     = "synapse-linked-service-${random_string.name.result}"
  integration_runtime_name = "synapse-linked-service-${random_string.name.result}"
  location                 = azurerm_resource_group.resource_group.location
  synapse_workspace_id     = azurerm_synapse_workspace.synapse_workspace.id
  type                     = "CosmosDb"
  type_properties_json     = <<JSON
{
  "connectionString": "${azurerm_cosmosdb_account.cosmosdb_account.connection_strings[0]}Database=${azurerm_cosmosdb_sql_database.cosmosdb_sql_database.name};"
}
JSON
  depends_on = [
    azurerm_synapse_firewall_rule.synapse_firewall_rule,
  ]
}