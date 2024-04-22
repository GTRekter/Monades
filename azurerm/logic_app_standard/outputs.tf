output "logic_app_id" {
  value       = azurerm_logic_app_standard.logic_app.id
  description = "The ID of the Logic App"
}

output "custom_domain_verification_id" {
  value       = azurerm_logic_app_standard.logic_app.custom_domain_verification_id
  description = "An identifier used by App Service to perform domain ownership verification via DNS TXT record."
}

output "default_hostname" {
  value       = azurerm_logic_app_standard.logic_app.default_hostname
  description = "The default hostname associated with the Logic App, such as mysite.azurewebsites.net"
}

output "outbound_ip_addresses" {
  value       = azurerm_logic_app_standard.logic_app.outbound_ip_addresses
  description = "A comma-separated list of outbound IP addresses, such as 52.23.25.3,52.143.43.12"
}

output "possible_outbound_ip_addresses" {
  value       = azurerm_logic_app_standard.logic_app.possible_outbound_ip_addresses
  description = "A comma-separated list of outbound IP addresses, not all of which are necessarily in use. Superset of outbound_ip_addresses."
}

output "logic_app_identity" {
  value       = azurerm_logic_app_standard.logic_app.identity
  description = "The Managed Service Identity information for this App Service."
}

output "site_credential" {
  value       = azurerm_logic_app_standard.logic_app.site_credential
  description = "The site-level credentials used to publish to this App Service."
}

output "logic_app_kind" {
  value       = azurerm_logic_app_standard.logic_app.kind
  description = "The Logic App kind, will be functionapp, workflowapp, etc."
}
