resource "ncloud_load_balancer" "load_balancer" {
  name                    = var.name
  algorithm_type          = var.algorithm_type
  description             = var.description
  rule_list               = var.rule_list
  server_instance_no_list = var.server_instance_no_list
  network_usage_type      = var.network_usage_type
  region                  = var.region
  zone                    = var.zone
  dynamic "rule_list" {
    for_each = var.rule_list
    content {
      protocol_type         = rule_list.value["protocol_type"]
      load_balancer_port    = rule_list.value["load_balancer_port"]
      server_port           = rule_list.value["server_port"]
      l7_health_check_path  = rule_list.value["l7_health_check_path"]
      certificate_name      = rule_list.value["certificate_name"]
      proxy_protocol_use_yn = rule_list.value["proxy_protocol_use_yn"]
    }
  }
}