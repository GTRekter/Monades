resource "ncloud_lb_listener" "listener_vpc" {
  load_balancer_no     = var.load_balancer_no
  target_group_no      = var.target_group_no
  port                 = var.port
  protocol             = var.protocol
  tls_min_version_type = var.tls_min_version_type
  use_http2            = var.use_http2
  ssl_certificate_no   = var.ssl_certificate_no
}