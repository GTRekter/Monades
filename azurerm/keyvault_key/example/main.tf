provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = false
      recover_soft_deleted_key_vaults = false
    }
  }
}

resource "random_string" "name" {
  length  = 10
  special = false
}

resource "azurerm_resource_group" "resource_group" {
  name     = "rg-${random_string.name.result}"
  location = "West Europe"
}

resource "azurerm_key_vault" "key_vault" {
  name                     = "kv-${random_string.name.result}"
  location                 = azurerm_resource_group.resource_group.location
  resource_group_name      = azurerm_resource_group.resource_group.name
  tenant_id                = data.azurerm_client_config.current.tenant_id
  purge_protection_enabled = false
  sku_name                 = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = [
      "Create",
      "Delete",
      "Get",
      "Purge",
      "Recover",
      "Update",
      "GetRotationPolicy",
      "SetRotationPolicy"
    ]
    secret_permissions = [
      "Get"
    ]
    storage_permissions = [
      "Get"
    ]
  }
}

module "key_vault_key" {
  #  source                       = "git::https://dev.azure.com/portaivan/Training/_git/Training//keyvault-key?ref=main"
  source                        = "../"
  name                          = "kvk-${random_string.name.result}"
  key_vault_name                = "kv-${random_string.name.result}"
  key_vault_resource_group_name = azurerm_resource_group.resource_group.name
  key_type                      = "RSA"
  key_size                      = "2048"
  key_opts                      = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
  expiration_date               = "2024-11-16T12:00:00Z"
  rotation_policy               = null
  tags = {
    env     = "test"
    project = "my-project"
  }
}