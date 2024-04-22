resource "azurerm_service_plan" "app_service_plan" {
  count                        = var.app_service_plan_id == null ? 1 : 0
  name                         = var.app_service_plan.name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  os_type                      = var.app_service_plan.os_type
  maximum_elastic_worker_count = var.app_service_plan.maximum_elastic_worker_count
  sku_name                     = var.app_service_plan.sku_name
}

resource "azurerm_logic_app_standard" "logic_app" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  app_service_plan_id = var.app_service_plan_id == null ? azurerm_service_plan.app_service_plan[0].id : var.app_service_plan_id
  app_settings = merge({
    "ENVIRONMENT"  = var.environment
    "SERVICE_NAME" = var.service_name
  }, var.custom_app_settings)
  dynamic "connection_string" {
    for_each = var.connection_string != null ? [var.connection_string] : []
    content {
      name  = connection_string.value.name
      type  = connection_string.value.type
      value = connection_string.value.value
    }
  }
  client_affinity_enabled = var.client_affinity_enabled
  client_certificate_mode = var.client_certificate_mode
  enabled                 = var.enabled
  dynamic "site_config" {
    for_each = var.site_config != null ? [var.site_config] : []
    content {
      always_on                        = site_config.value.always_on
      app_scale_limit                  = site_config.value.app_scale_limit
      dotnet_framework_version         = site_config.value.dotnet_framework_version
      elastic_instance_minimum         = site_config.value.elastic_instance_minimum
      ftps_state                       = site_config.value.ftps_state
      health_check_path                = site_config.value.health_check_path
      http2_enabled                    = site_config.value.http2_enabled
      linux_fx_version                 = site_config.value.linux_fx_version
      min_tls_version                  = site_config.value.min_tls_version
      pre_warmed_instance_count        = site_config.value.pre_warmed_instance_count
      public_network_access_enabled    = site_config.value.public_network_access_enabled
      runtime_scale_monitoring_enabled = site_config.value.runtime_scale_monitoring_enabled
      use_32_bit_worker_process        = site_config.value.use_32_bit_worker_process
      vnet_route_all_enabled           = site_config.value.vnet_route_all_enabled
      websockets_enabled               = site_config.value.websockets_enabled
    }
  }
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
  storage_account_share_name = var.storage_account_share_name
  version                    = "~4"
  virtual_network_subnet_id  = var.virtual_network_subnet_id
  identity {
    type = "SystemAssigned"
  }
}
