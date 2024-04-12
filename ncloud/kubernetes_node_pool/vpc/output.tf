output "id" {
  description = "The ID of nodepool. (cluster_uuid:node_pool_name)"
  value = ncloud_nks_node_pool.nks_node_pool.id
}

output "instance_no" {
  description = "Instance No."
  value = ncloud_nks_node_pool.nks_node_pool.instance_no
}

output "nodes" {
  description = "Running nodes in nodepool."
  value = ncloud_nks_node_pool.nks_node_pool.nodes
}

output "name" {
  description = "The name of Server instance."
  value = ncloud_nks_node_pool.nks_node_pool.name
}

output "instance_no" {
  description = "The ID of server instance."
  value = ncloud_nks_node_pool.nks_node_pool.instance_no
}

output "spec" {
  description = "Server spec."
  value = ncloud_nks_node_pool.nks_node_pool.spec
}

output "private_ip" {
  description = "Private IP."
  value = ncloud_nks_node_pool.nks_node_pool.private_ip
}

output "public_ip" {
  description = "Public IP."
  value = ncloud_nks_node_pool.nks_node_pool.public_ip
}

output "node_status" {
  description = "Node Status."
  value = ncloud_nks_node_pool.nks_node_pool.node_status
}

output "container_version" {
  description = "Container version of node."
  value = ncloud_nks_node_pool.nks_node_pool.container_version
}

output "kernel_version" {
  description = "kernel version of node."
  value = ncloud_nks_node_pool.nks_node_pool.kernel_version
}