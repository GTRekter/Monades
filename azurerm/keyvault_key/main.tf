data "azurerm_key_vault" "key_vault" {
  name                = var.key_vault_name
  resource_group_name = var.key_vault_resource_group_name
}

resource "azurerm_key_vault_key" "key_vault_key" {
  name            = var.name
  key_vault_id    = data.azurerm_key_vault.key_vault.id
  key_type        = var.key_type
  key_size        = var.key_size
  curve           = var.curve
  key_opts        = var.key_opts
  not_before_date = var.not_before_date
  expiration_date = var.expiration_date

  dynamic "rotation_policy" {
    for_each = var.rotation_policy != null ? [var.rotation_policy] : []
    content {
      dynamic "automatic" {
        for_each = rotation_policy.value.automatic != null ? [rotation_policy.value.automatic] : []
        content {
          time_before_expiry  = automatic.value.time_before_expiry
          time_after_creation = automatic.value.time_after_creation
        }
      }
      expire_after         = rotation_policy.value.expire_after
      notify_before_expiry = rotation_policy.value.notify_before_expiry
    }
  }

  tags = var.tags
}