resource "ncloud_cdss_cluster" "cdss_cluster" {
  name               = var.name
  kafka_version_code = var.kafka_version_code
  config_group_no    = var.config_group_no
  vpc_no             = var.vpc_no
  os_image           = var.os_image
  cmak {
    user_name     = var.cmak.user_name
    user_password = var.cmak.user_password
  }
  manager_node {
    node_product_code = var.manager_node.node_product_code
    subnet_no         = var.manager_node.subnet_no
  }
  broker_nodes {
    node_product_code = var.broker_nodes.node_product_code
    subnet_no         = var.broker_nodes.subnet_no
    node_count        = var.broker_nodes.node_count
    storage_size      = var.broker_nodes.storage_size
  }
}