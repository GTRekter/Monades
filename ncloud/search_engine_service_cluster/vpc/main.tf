resource "ncloud_ses_cluster" "ses_cluster" {
  cluster_name  = var.cluster_name
  os_image_code = var.os_image_code
  vpc_no        = var.vpc_no
  search_engine {
    version_code   = var.search_engine.version_code
    user_name      = var.search_engine.user_name
    user_password  = var.search_engine.user_password
    dashboard_port = var.search_engine.dashboard_port
  }
  manager_node {
    is_dual_manager = var.manager_node.is_dual_manager
    product_code    = var.manager_node.product_code
    subnet_no       = var.manager_node.subnet_no
  }
  data_node {
    product_code = var.data_node.product_code
    subnet_no    = var.data_node.subnet_no
    count        = var.data_node.count
    storage_size = var.data_node.storage_size
  }
  dynamic "master_node" {
    for_each = var.master_node != null ? [var.master_node] : []
    content {
      product_code = string
      subnet_no    = string
      count        = number
    }
  }
  login_key_name = var.login_key_name
}