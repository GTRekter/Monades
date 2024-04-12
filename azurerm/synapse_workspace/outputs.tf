output "workspace_id" {
  value       = azurerm_synapse_workspace.synapse_workspace.id
  description = "The ID of the synapse Workspace."
}
output "firewall_rules_ids" {
  description = "The IDs of the synapse Firewall Rules."
  value       = [for rule in azurerm_synapse_firewall_rule.firewall_rules : rule.id]
}
output "extended_auditing_policy_id" {
  value       = var.auditing_policy_enabled ? azurerm_synapse_workspace_extended_auditing_policy.synapse_workspace_extended_auditing_policy[0].id : null
  description = "The ID of the Synapse Workspace Extended Auditing Policy."
}
output "security_alert_policy_id" {
  value       = var.security_alert_policy_enabled ? azurerm_synapse_workspace_security_alert_policy.synapse_workspace_security_alert_policy[0].id : null
  description = "The ID of the Synapse Workspace Security Alert Policy."
}
output "vulnerability_assessment_id" {
  value       = var.security_alert_policy_enabled && var.vulnerability_assessment_enabled ? azurerm_synapse_workspace_vulnerability_assessment.synapse_workspace_vulnerability_assessment[0].id : null
  description = "The ID of the Synapse Workspace Vulnerability Assessment."
}