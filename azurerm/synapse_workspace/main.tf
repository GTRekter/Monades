resource "azurerm_synapse_workspace" "synapse_workspace" {
  name                                 = var.name
  resource_group_name                  = var.resource_group_name
  location                             = var.location
  storage_data_lake_gen2_filesystem_id = var.storage_data_lake_gen2_filesystem_id

  sql_administrator_login          = var.sql_administrator_login
  sql_administrator_login_password = var.sql_administrator_login_password
  azuread_authentication_only      = var.azuread_authentication_only
  dynamic "customer_managed_key" {
    for_each = var.customer_managed_key != null ? [var.customer_managed_key] : []
    content {
      key_versionless_id = customer_managed_key.value.key_versionless_id
      key_name           = customer_managed_key.value.key_name
    }
  }

  data_exfiltration_protection_enabled = var.data_exfiltration_protection_enabled
  dynamic "azure_devops_repo" {
    for_each = var.azure_devops_repo != null ? [var.azure_devops_repo] : []
    content {
      account_name    = azure_devops_repo.value.account_name
      project_name    = azure_devops_repo.value.project_name
      branch_name     = azure_devops_repo.value.branch_name
      root_folder     = azure_devops_repo.value.root_folder
      repository_name = azure_devops_repo.value.repository_name
      tenant_id       = try(azure_devops_repo.value.tenant_id, null)
      last_commit_id  = try(azure_devops_repo.value.last_commit_id, null)
    }
  }

  public_network_access_enabled   = var.public_network_access_enabled
  managed_virtual_network_enabled = var.managed_virtual_network_enabled
  compute_subnet_id               = var.compute_subnet_id

  purview_id                   = var.purview_id
  sql_identity_control_enabled = var.sql_identity_control_enabled
  tags                         = var.tags
  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_synapse_workspace_aad_admin" "synapse_workspace_aad_admin" {
  count                = var.aad_admin != null ? 1 : 0
  synapse_workspace_id = azurerm_synapse_workspace.synapse_workspace.id
  login                = var.aad_admin.login
  object_id            = var.aad_admin.object_id
  tenant_id            = var.aad_admin.tenant_id
}

resource "azurerm_synapse_workspace_sql_aad_admin" "synapse_workspace_sql_aad_admin" {
  count                = var.sql_aad_admin != null ? 1 : 0
  synapse_workspace_id = azurerm_synapse_workspace.synapse_workspace.id
  login                = var.aad_admin.login
  object_id            = var.aad_admin.object_id
  tenant_id            = var.aad_admin.tenant_id
}

resource "azurerm_synapse_firewall_rule" "firewall_rules" {
  for_each             = { for rule in var.firewall_rules : rule.name => rule }
  name                 = each.value.name
  synapse_workspace_id = azurerm_synapse_workspace.synapse_workspace.id
  start_ip_address     = each.value.start_ip_address
  end_ip_address       = each.value.end_ip_address
}

// ======================================================
// Synapse Policy Resources
// NOTE: Azure Synapse Analytics only supports one 
// extended auditing policy and alert policy per workspace
// ======================================================
resource "azurerm_synapse_workspace_extended_auditing_policy" "synapse_workspace_extended_auditing_policy" {
  count                                   = var.auditing_policy_enabled ? 1 : 0
  synapse_workspace_id                    = azurerm_synapse_workspace.synapse_workspace.id
  storage_endpoint                        = var.auditing_policy_storage_endpoint
  storage_account_access_key              = var.auditing_policy_storage_account_access_key
  storage_account_access_key_is_secondary = false
  retention_in_days                       = 6
}

resource "azurerm_synapse_workspace_security_alert_policy" "synapse_workspace_security_alert_policy" {
  count                        = var.security_alert_policy_enabled ? 1 : 0
  synapse_workspace_id         = azurerm_synapse_workspace.synapse_workspace.id
  policy_state                 = var.security_alert_policy_state
  disabled_alerts              = var.security_alert_policy_disabled_alerts
  email_account_admins_enabled = var.security_alert_policy_email_account_admins_enabled
  email_addresses              = var.security_alert_policy_email_addresses
  storage_endpoint             = var.security_alert_policy_storage_endpoint
  storage_account_access_key   = var.security_alert_policy_storage_account_access_key
  retention_days               = var.security_alert_policy_retention_days
}

resource "azurerm_synapse_workspace_vulnerability_assessment" "synapse_workspace_vulnerability_assessment" {
  count                              = var.security_alert_policy_enabled && var.vulnerability_assessment_enabled ? 1 : 0
  workspace_security_alert_policy_id = azurerm_synapse_workspace_security_alert_policy.synapse_workspace_security_alert_policy[0].id
  storage_container_path             = var.vulnerability_assessment_storage_container_path
  storage_account_access_key         = var.vulnerability_assessment_storage_account_access_key
  dynamic "recurring_scans" {
    for_each = var.vulnerability_assessment_recurring_scans != null ? [var.vulnerability_assessment_recurring_scans] : []
    content {
      enabled                           = recurring_scans.value.enabled
      email_subscription_admins_enabled = recurring_scans.value.email_subscription_admins_enabled
      emails                            = recurring_scans.value.emails
    }
  }
}