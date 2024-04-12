resource "ncloud_nks_node_pool" "nks_node_pool" {
  name        = var.node_pool_name
  cluster_uuid = var.cluster_uuid
  node_count  = var.node_count
  product_code = var.product_code
  software_code = var.software_code
  autoscale   = var.autoscale
  label       = var.label
  taint       = var.taint
}