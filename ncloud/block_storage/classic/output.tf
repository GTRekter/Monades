output "id" {
  description = "The ID of Block storage instance."
  value       = ncloud_block_storage.block_storage.id
}

output "block_storage_no" {
  description = "The ID of Block storage instance. (It is the same result as id)"
  value       = ncloud_block_storage.block_storage.block_storage_no
}

output "server_name" {
  description = "Server name."
  value       = ncloud_block_storage.block_storage.server_name
}

output "type" {
  description = "Block storage type code."
  value       = ncloud_block_storage.block_storage.type
}

output "device_name" {
  description = "Device name."
  value       = ncloud_block_storage.block_storage.device_name
}

output "product_code" {
  description = "Block storage product code."
  value       = ncloud_block_storage.block_storage.product_code
}

output "status" {
  description = "Block storage instance status code."
  value       = ncloud_block_storage.block_storage.status
}

output "disk_type" {
  description = "Disk type code."
  value       = ncloud_block_storage.block_storage.disk_type
}