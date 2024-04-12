resource "ncloud_cdss_config_group" "cdss_config_group" {
  name = var.name
  kafka_version_code = var.kafka_version_code
  description = var.description
}