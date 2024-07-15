resource "nhncloud_blockstorage_volume_v2" "block_storage_volume_v2" {
  region            = var.region
  name              = var.name
  description       = var.description
  size              = var.size
  snapshot_id       = var.snapshot_id
  availability_zone = var.availability_zone
  volume_type       = var.volume_type

  dynamic "nhn_encryption" {
    for_each = var.nhn_encryption != null ? [var.nhn_encryption] : []
    content {
      skm_appkey = nhn_encryption.value.skm_appkey
      skm_key_id = nhn_encryption.value.skm_key_id
    }
  }
}