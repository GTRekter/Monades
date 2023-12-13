output "key_vault_key_id" {
  description = "The ID of the created Key Vault Key"
  value       = azurerm_key_vault_key.key_vault_key.id
}

output "key_vault_key_name" {
  description = "The name of the created Key Vault Key"
  value       = azurerm_key_vault_key.key_vault_key.name
}

output "key_vault_key_version" {
  description = "The version of the created Key Vault Key"
  value       = azurerm_key_vault_key.key_vault_key.version
}