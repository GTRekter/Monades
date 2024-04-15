resource "ncloud_block_storage_snapshot" "block_storage_snapshot" {
  block_storage_instance_no = var.block_storage_instance_no
  name                      = var.name
  description               = var.description
}