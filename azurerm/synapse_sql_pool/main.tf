resource "azurerm_synapse_sql_pool" "synapse_sql_pool" {
  name                      = var.name
  synapse_workspace_id      = var.synapse_workspace_id
  sku_name                  = var.sku_name
  create_mode               = var.create_mode
  storage_account_type      = var.storage_account_type
  collation                 = var.collation
  data_encrypted            = var.data_encrypted
  recovery_database_id      = var.recovery_database_id
  geo_backup_policy_enabled = var.geo_backup_policy_enabled
  dynamic "restore" {
    for_each = var.restore != null ? [var.restore] : []
    content {
      source_database_id = restore.value.source_database_id
      point_in_time      = restore.value.point_in_time
    }
  }
  tags = var.tags
}

resource "azurerm_synapse_sql_pool_extended_auditing_policy" "synapse_sql_pool_extended_auditing_policy" {
  count                                   = var.audit_logs_enabled ? 1 : 0
  sql_pool_id                             = azurerm_synapse_sql_pool.synapse_sql_pool.id
  storage_endpoint                        = var.audit_logs_primary_blob_endpoint
  storage_account_access_key              = var.audit_logs_storage_account_access_key
  storage_account_access_key_is_secondary = var.audit_logs_storage_account_access_key_is_secondary
  retention_in_days                       = var.audit_logs_retention_in_days
  log_monitoring_enabled                  = var.audit_logs_log_monitoring_enabled
}

resource "azurerm_synapse_sql_pool_security_alert_policy" "synapse_sql_pool_security_alert_policy" {
  count                        = var.security_alert_policy_enabled ? 1 : 0
  sql_pool_id                  = azurerm_synapse_sql_pool.synapse_sql_pool.id
  policy_state                 = var.security_alert_policy_state
  storage_endpoint             = var.security_alert_policy_storage_endpoint
  storage_account_access_key   = var.security_alert_policy_storage_account_access_key
  disabled_alerts              = var.security_alert_policy_disabled_alerts
  email_account_admins_enabled = var.security_alert_policy_email_account_admins_enabled
  email_addresses              = var.security_alert_policy_email_addresses
  retention_days               = var.security_alert_policy_retention_days
}

resource "azurerm_synapse_sql_pool_vulnerability_assessment" "synapse_sql_pool_vulnerability_assessment" {
  count                             = var.vulnerability_assessment_enabled && var.security_alert_policy_enabled ? 1 : 0
  sql_pool_security_alert_policy_id = azurerm_synapse_sql_pool_security_alert_policy.synapse_sql_pool_security_alert_policy.id
  storage_container_path            = var.vulnerability_assessment_storage_container_path
  storage_account_access_key        = var.vulnerability_assessment_storage_account_access_key
  storage_container_sas_key         = var.vulnerability_assessment_storage_container_sas_key
  dynamic "recurring_scans" {
    for_each = var.vulnerability_assessment_recurring_scans != null ? [var.vulnerability_assessment_recurring_scans] : []
    content {
      enabled                           = recurring_scans.value.enabled
      email_subscription_admins_enabled = recurring_scans.value.email_subscription_admins_enabled
      emails                            = recurring_scans.value.emails
    }
  }
}
