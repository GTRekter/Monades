resource "ncloud_nks_node_pool" "nks_node_pool" {
  node_pool_name = var.node_pool_name
  cluster_uuid   = var.cluster_uuid
  node_count     = var.node_count
  product_code   = var.product_code
  software_code  = var.software_code
  dynamic "autoscale" {
    for_each = var.autoscale != null ? [var.autoscale] : []
    content {
      enabled = autoscale.value.enabled
      min     = autoscale.value.min
      max     = autoscale.value.max
    }
  }
  dynamic "label" {
    for_each = var.label != null ? [var.label] : []
    content {
      key   = label.value.key
      value = label.value.value
    }
  }
  dynamic "taint" {
    for_each = var.taint != null ? [var.taint] : []
    content {
      key   = taint.value.key
      value = taint.value.value
    }
  }
}