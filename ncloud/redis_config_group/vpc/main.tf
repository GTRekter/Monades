resource "ncloud_redis_config_group" "redis_config_group" {
  name          = var.name
  redis_version = var.redis_version
  description   = var.description
}