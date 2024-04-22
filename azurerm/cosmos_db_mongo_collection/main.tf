resource "azurerm_cosmosdb_mongo_collection" "mongo_collection" {
  name                   = var.name
  resource_group_name    = var.resource_group_name
  account_name           = var.account_name
  database_name          = var.database_name
  shard_key              = var.shard_key
  analytical_storage_ttl = var.analytical_storage_ttl
  default_ttl_seconds    = var.default_ttl_seconds
  throughput             = var.throughput

  dynamic "index" {
    for_each = var.index
    content {
      keys   = index.value.keys
      unique = lookup(index.value, "unique", false)
    }
  }

  dynamic "autoscale_settings" {
    for_each = var.autoscale_settings == null ? [] : [var.autoscale_settings]
    content {
      max_throughput = autoscale_settings.value.max_throughput
    }
  }
}
