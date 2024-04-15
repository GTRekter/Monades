output "id" {
  description = "Cluster Instance No."
  value       = ncloud_ses_cluster.ses_cluster.id
}

output "service_group_instance_no" {
  description = "Cluster Instance No. (It is the same result as id)"
  value       = ncloud_ses_cluster.ses_cluster.service_group_instance_no
}

output "manager_node" {
  description = <<EOF
  Manager node information.
    - acg_id: The ID of manager node ACG.
    - acg_name: The name of manager node ACG.
EOF
  value       = ncloud_ses_cluster.ses_cluster.manager_node
}

output "data_node" {
  description = <<EOF
  Data node information.
    - acg_id: The ID of data node ACG.
    - acg_name: The name of data node ACG.
EOF
  value       = ncloud_ses_cluster.ses_cluster.data_node
}

output "master_node" {
  description = <<EOF
    Master node information.
        - acg_id: The ID of master node ACG.
        - acg_name: The name of master node ACG.
EOF
  value       = ncloud_ses_cluster.ses_cluster.master_node
}

output "manager_node_instance_no_list" {

  description = "List of Manager node's instance number"
  value       = ncloud_ses_cluster.ses_cluster.manager_node_instance_no_list
}

output "cluster_node_list" {
  description = <<EOF
    Cluster node information.
        - compute_instance_name: The name of Server instance.
        - compute_instance_no: The ID of Server instance.
        - node_type: Node role code
        - private_ip: Private IP
        - server_status: The status of Server Instance.
        - subnet: The name of Server Instance subnet.
EOF

  value = ncloud_ses_cluster.ses_cluster.cluster_node_list
}

