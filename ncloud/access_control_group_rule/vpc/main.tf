resource "nhncloud_blockstorage_volume_v2" "block_storage_volume_v2" {
  name = "tf_volume_03"
  description = "terraform create volume with snapshot test"
  snapshot_id = data.nhncloud_blockstorage_snapshot_v2.snapshot_01.id
  size = 30
}