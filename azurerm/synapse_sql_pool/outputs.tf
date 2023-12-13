output "synapse_sql_pool_id" {
  description = "The ID of the Synapse SQL Pool."
  value       = azurerm_synapse_sql_pool.synapse_sql_pool.id
  sensitive = false
}
output "synapse_sql_pool_extended_auditing_policy_id" {
  description = "The ID of the Synapse SQL Pool Extended Auditing Policy."
  value       = azurerm_synapse_sql_pool_extended_auditing_policy.synapse_sql_pool_extended_auditing_policy.id
  sensitive = false
}
output "synapse_sql_pool_id" {
  description = "The ID of the Synapse SQL Pool Security Alert Policy."
  value       = azurerm_synapse_sql_pool_security_alert_policy.synapse_sql_pool_security_alert_policy.id
  sensitive = false
}
output "synapse_sql_pool_vulnerability_assessment_id" {
  description = "The ID of the Synapse SQL Pool Vulnerability Assessment."
  value       = azurerm_synapse_sql_pool_vulnerability_assessment.synapse_sql_pool_vulnerability_assessment.id
  sensitive = false
}