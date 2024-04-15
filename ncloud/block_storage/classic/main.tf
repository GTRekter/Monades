resource "ncloud_block_storage" "block_storage" {
  size                           = var.size
  server_instance_no             = var.server_instance_no
  name                           = var.name
  description                    = var.description
  disk_detail_type               = var.disk_detail_type
  stop_instance_before_detaching = var.stop_instance_before_detaching
  zone                           = var.zone
  snapshot_no                    = var.snapshot_no
}