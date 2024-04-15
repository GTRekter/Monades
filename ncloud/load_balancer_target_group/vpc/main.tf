resource "ncloud_lb_target_group" "target_group" {
  name        = var.name
  port        = var.port
  protocol    = var.protocol
  description = var.description
  dynamic "health_check " {
    for_each = var.health_check != null ? [var.health_check] : []
    content {
      protocol_type       = health_check.value["protocol_type"]
      port                = health_check.value["port"]
      path                = health_check.value["path"]
      response_code       = health_check.value["response_code"]
      interval            = health_check.value["interval"]
      timeout             = health_check.value["timeout"]
      unhealthy_threshold = health_check.value["unhealthy_threshold"]
      healthy_threshold   = health_check.value["healthy_threshold"]
    }
  }
  target_type        = var.target_type
  vpc_no             = var.vpc_no
  use_sticky_session = var.use_sticky_session
  use_proxy_protocol = var.use_proxy_protocol
  algorithm_type     = var.algorithm_type
}