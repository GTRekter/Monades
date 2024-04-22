resource "azurerm_data_protection_backup_vault" "data_protection_backup_vault" {
  name                       = var.name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  datastore_type             = var.datastore_type
  redundancy                 = var.redundancy
  retention_duration_in_days = var.retention_duration_in_days
  soft_delete                = var.soft_delete
  tags                       = var.tags
  identity {
    type = "SystemAssigned"
  }
}

data "azurerm_storage_account" "storage_accounts" {
  for_each            = var.storage_accounts
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_role_assignment" "storage_account_backup_contributor" {
  for_each             = data.azurerm_storage_account.storage_accounts
  scope                = each.value.id
  role_definition_name = "Storage Account Backup Contributor"
  principal_id         = azurerm_data_protection_backup_vault.data_protection_backup_vault.identity.0.principal_id
}