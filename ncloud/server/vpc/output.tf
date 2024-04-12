output "id" {
  description = "The ID of server instance."
  value       = ncloud_server.server.id
}

output "instance_no" {
  description = "The ID of server instance."
  value       = ncloud_server.server.instance_no
}

output "cpu_count" {
  description = "number of CPUs."
  value       = ncloud_server.server.cpu_count
}

output "memory_size" {
  description = "The size of the memory in bytes."
  value       = ncloud_server.server.memory_size
}

output "base_block_storage_size" {
  description = "The size of base block storage in bytes."
  value       = ncloud_server.server.base_block_storage_size
}

output "platform_type" {
  description = "Platform type code."
  value       = ncloud_server.server.platform_type
}

output "public_ip" {
  description = "Public IP."
  value       = ncloud_server.server.public_ip
}

output "private_ip" {
  description = "Private IP."
  value       = ncloud_server.server.private_ip
}

output "server_image_name" {
  description = "Server image name."
  value       = ncloud_server.server.server_image_name
}

output "port_forwarding_public_ip" {
  description = "Port forwarding public ip."
  value       = ncloud_server.server.port_forwarding_public_ip
}

output "port_forwarding_external_port" {
  description = "Port forwarding external port."
  value       = ncloud_server.server.port_forwarding_external_port
}

output "port_forwarding_internal_port" {
  description = "Port forwarding internal port."
  value       = ncloud_server.server.port_forwarding_internal_port
}

output "base_block_storage_disk_type" {
  description = "Base block storage disk type code."
  value       = ncloud_server.server.base_block_storage_disk_type
}

output "base_block_storage_disk_detail_type" {
  description = "Base block storage disk detail type code."
  value       = ncloud_server.server.base_block_storage_disk_detail_type
}

output "vpc_no" {
  description = "The ID of the VPC where you want to place the Server Instance."
  value       = ncloud_server.server.vpc_no
}

output "network_interface" {
  description = <<EOF
List of Network Interface.
- subnet_no - Subnet ID of the network interface.
- private_ip - IP address of the network interface.
EOF
  value       = ncloud_server.server.network_interface
}