resource "ncloud_ses_cluster" "ses_cluster" {
  cluster_name   = var.cluster_name
  os_image_code  = var.os_image_code
  vpc_no         = var.vpc_no
  search_engine  = var.search_engine
  manager_node   = var.manager_node
  data_node      = var.data_node
  master_node    = var.master_node
  login_key_name = var.login_key_name
}