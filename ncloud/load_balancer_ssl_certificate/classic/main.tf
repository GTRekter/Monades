resource "ncloud_load_balancer_ssl_certificate" "ssl_certificate" {
  certificate_name      = var.certificate_name
  privatekey            = var.privatekey
  publickey_certificate = var.publickey_certificate
  certificate_chain     = var.certificate_chain
}