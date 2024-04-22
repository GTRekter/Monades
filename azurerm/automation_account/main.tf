resource "azurerm_automation_account" "automation_account" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  sku_name                      = var.sku_name
  local_authentication_enabled  = var.local_authentication_enabled
  public_network_access_enabled = var.public_network_access_enabled

  dynamic "encryption" {
    for_each = var.key_vault_key_id != null ? [var.key_vault_key_id] : []
    content {
      key_vault_key_id          = encryption.value
      user_assigned_identity_id = var.user_assigned_identity_id
    }
  }
  tags = var.tags
  identity {
    type = "SystemAssigned"
  }
}