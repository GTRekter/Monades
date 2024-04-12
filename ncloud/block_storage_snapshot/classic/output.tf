output "instance_no" {
  description = "Block Storage Snapshot Instance Number"
  value       = ncloud_block_storage_snapshot.block_storage_snapshot.instance_no
}

output "volume_size" {
  description = "Block Storage Snapshot Volume Size"
  value       = ncloud_block_storage_snapshot.block_storage_snapshot.volume_size
}

output "original_block_storage_instance_no" {
  description = "Original Block Storage Instance Number"
  value       = ncloud_block_storage_snapshot.block_storage_snapshot.original_block_storage_instance_no
}

output "original_block_storage_name" {
  description = "Original Block Storage Name"
  value       = ncloud_block_storage_snapshot.block_storage_snapshot.original_block_storage_name
}

output "instance_status" {
  description = "Block Storage Snapshot Instance Status code"
  value       = ncloud_block_storage_snapshot.block_storage_snapshot.instance_status
}

output "instance_status_name" {
  description = "Block Storage Snapshot Instance Status Name"
  value       = ncloud_block_storage_snapshot.block_storage_snapshot.instance_status_name
}

output "instance_operation" {
  description = "Block Storage Snapshot Instance Operation code"
  value       = ncloud_block_storage_snapshot.block_storage_snapshot.instance_operation
}

output "create_date" {
  description = "Creation date of the block storage snapshot instance"
  value       = ncloud_block_storage_snapshot.block_storage_snapshot.create_date
}

output "server_image_product_code" {
  description = "Server Image Product Code"
  value       = ncloud_block_storage_snapshot.block_storage_snapshot.server_image_product_code
}

output "os_information" {
  description = "OS Information"
  value       = ncloud_block_storage_snapshot.block_storage_snapshot.os_information
}