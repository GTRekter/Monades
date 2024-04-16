resource "cloudflare_regional_tiered_cache" "regional_tiered_cache" {
  zone_id = var.zone_id
  value   = var.value
}