variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location for the resources"
  type        = string
}

variable "app_service_plan" {
  description = "App Service Plan configuration"
  type = object({
    name                         = string
    sku_name                     = string
    maximum_elastic_worker_count = number
    os_type                      = string
  })
  default = null
}

variable "name" {
  description = "Name of the logic app"
  type        = string
}

variable "app_service_plan_id" {
  description = "ID of the App Service Plan"
  type        = string
  default     = null
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "service_name" {
  description = "Service name"
  type        = string
}

variable "custom_app_settings" {
  description = "Custom application settings"
  type        = map(string)
  default     = {}
}

variable "connection_string" {
  description = "Connection string"
  type = object({
    name  = string
    type  = string
    value = string
  })
  default = null
}

variable "client_affinity_enabled" {
  description = "Flag to enable client affinity"
  type        = bool
  default     = false
}

variable "client_certificate_mode" {
  description = "Client certificate mode"
  type        = string
}

variable "enabled" {
  description = "Flag to enable the logic app"
  type        = bool
  default     = true
}

variable "https_only" {
  description = "Flag to enable HTTPS only"
  type        = bool
  default     = false
}

variable "site_config" {
  description = "Site configuration"
  type = object({
    always_on                        = optional(bool)
    app_scale_limit                  = optional(number)
    dotnet_framework_version         = optional(string)
    elastic_instance_minimum         = optional(number)
    ftps_state                       = optional(string)
    health_check_path                = optional(string)
    http2_enabled                    = optional(bool)
    linux_fx_version                 = optional(string)
    min_tls_version                  = optional(string)
    pre_warmed_instance_count        = optional(number)
    public_network_access_enabled    = optional(bool)
    runtime_scale_monitoring_enabled = optional(bool)
    use_32_bit_worker_process        = optional(bool)
    vnet_route_all_enabled           = optional(bool)
    websockets_enabled               = optional(bool)
  })
  default = null
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "storage_account_access_key" {
  description = "Access key for the storage account"
  type        = string
}

variable "storage_account_share_name" {
  description = "Name of the storage account share"
  type        = string
  default     = null
}

variable "virtual_network_subnet_id" {
  description = "ID of the virtual network subnet"
  type        = string
  default     = null
}
