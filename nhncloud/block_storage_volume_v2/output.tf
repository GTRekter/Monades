output "volume_id" {
  description = "The ID of the block storage volume."
  value       = nhncloud_blockstorage_volume_v2.block_storage_volume_v2.id
}

output "volume_name" {
  description = "The name of the block storage volume."
  value       = nhncloud_blockstorage_volume_v2.block_storage_volume_v2.name
}

output "volume_size" {
  description = "The size of the block storage volume."
  value       = nhncloud_blockstorage_volume_v2.block_storage_volume_v2.size
}

output "volume_description" {
  description = "The description of the block storage volume."
  value       = nhncloud_blockstorage_volume_v2.block_storage_volume_v2.description
}

output "volume_snapshot_id" {
  description = "The snapshot ID from which the block storage volume was created."
  value       = nhncloud_blockstorage_volume_v2.block_storage_volume_v2.snapshot_id
}

output "volume_availability_zone" {
  description = "The availability zone of the block storage volume."
  value       = nhncloud_blockstorage_volume_v2.block_storage_volume_v2.availability_zone
}

output "volume_type" {
  description = "The type of the block storage volume."
  value       = nhncloud_blockstorage_volume_v2.block_storage_volume_v2.volume_type
}
