output "sql_pool_id" {
  description = "The ID of the Synapse SQL Pool."
  value       = azurerm_synapse_sql_pool.synapse_sql_pool.id
  sensitive   = false
}
output "extended_auditing_policy_id" {
  description = "The ID of the Synapse SQL Pool Extended Auditing Policy."
  value       = var.audit_logs_enabled ? azurerm_synapse_sql_pool_extended_auditing_policy.synapse_sql_pool_extended_auditing_policy[0].id : null
  sensitive   = false
}
output "security_alert_policy_id" {
  description = "The ID of the Synapse SQL Pool Security Alert Policy."
  value       = var.security_alert_policy_enabled ? azurerm_synapse_sql_pool_security_alert_policy.synapse_sql_pool_security_alert_policy[0].id : null
  sensitive   = false
}
output "vulnerability_assessment_id" {
  description = "The ID of the Synapse SQL Pool Vulnerability Assessment."
  value       = var.vulnerability_assessment_enabled && var.security_alert_policy_enabled ? azurerm_synapse_sql_pool_vulnerability_assessment.synapse_sql_pool_vulnerability_assessment[0].id : null
  sensitive   = false
}